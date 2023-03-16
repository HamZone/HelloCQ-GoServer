package service

import (
	"errors"
	"fmt"
	"hellocq/app/server/code"
	"hellocq/app/server/entities"
	"hellocq/common/cache"
	"hellocq/common/conf"
	"hellocq/common/log"
	"time"

	goredis "github.com/go-redis/redis"
	"github.com/golang-jwt/jwt"
	"github.com/labstack/echo/v4"
)

var JwtSecret = []byte(conf.AccessUser.JwtSec)

var JwtExpire = 2 * time.Hour

var JwtRefreshExpire = 30 * 24 * time.Hour

var JwtRedisKey = func(uid int64) string {
	return fmt.Sprintf("h_jwt_%d", uid)
}

type Claims struct {
	Username string `json:"username"`
	Uid      int64  `json:"uid"`
	Ip       string `json:"ip"`
	jwt.StandardClaims
}

// GenerateToken 生成jwt token
func GenerateToken(p Claims) (string, error) {
	status, err := cache.GoRedisClient.
		Get(JwtRedisKey(p.Uid)).Result()
	if err != nil && !errors.Is(err, goredis.Nil) {
		return "", err
	}
	if status != "" {
		return status, nil
	}
	nowTime := time.Now()
	expireTime := nowTime.Add(JwtExpire)

	claims := Claims{
		p.Username,
		p.Uid,
		p.Ip,
		jwt.StandardClaims{
			Id:        log.NewLog().UUID.String(),
			IssuedAt:  nowTime.Unix(),
			ExpiresAt: expireTime.Unix(),
			Issuer:    "hellocq.net",
		},
	}

	tokenClaims := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)
	token, err := tokenClaims.SignedString(JwtSecret)
	if err != nil {
		return "", err
	}

	err = cache.GoRedisClient.SetNX(JwtRedisKey(p.Uid), token, JwtExpire).Err()
	if err != nil {
		return "", err
	}

	return token, err
}

// GenerateRefreshToken 刷新
func GenerateRefreshToken(p Claims) string {
	nowTime := time.Now()
	expireTime := nowTime.Add(JwtRefreshExpire)
	claims := Claims{
		p.Username,
		p.Uid,
		p.Ip,
		jwt.StandardClaims{
			IssuedAt:  nowTime.Unix(),
			ExpiresAt: expireTime.Unix(),
			Issuer:    "hellocq.net",
		},
	}
	tokenClaims := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)
	token, err := tokenClaims.SignedString(JwtSecret)
	if err != nil {
		log.NewLog().Errorln(err)
		return ""
	}
	return token
}

// Refresh 刷新token
func RefreshToken(e echo.Context) error {
	var (
		res entities.Response
	)
	xtoken := e.Request().Header.Get("x-refresh-token")
	if xtoken == "" {
		return e.JSON(401, code.UnauthorizedResp)
	}
	var mc = new(Claims)
	token, err := jwt.ParseWithClaims(xtoken, mc, keyFunc)
	if err != nil {
		log.NewLog().Errorln(err)
		return e.JSON(401, code.UnauthorizedResp)
	}
	if !token.Valid {
		return e.JSON(401, code.UnauthorizedResp)
	}
	newToken, err := GenerateToken(Claims{
		Username: mc.Username,
		Uid:      mc.Uid,
		Ip:       e.RealIP(),
	})
	if err != nil {
		log.NewLog().Errorln(err)
		res.Code, res.Message = 500, code.ErrToken.Error()
		return e.JSON(500, code.ErrToken)
	}

	res = code.SuccessResp
	res.Data = map[string]string{
		"token": newToken,
	}
	return e.JSON(200, res)
}

func keyFunc(_ *jwt.Token) (i interface{}, err error) {
	return JwtSecret, nil
}

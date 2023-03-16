package middleware

import (
	"errors"
	"hellocq/app/server/code"
	"hellocq/app/server/service"
	"hellocq/common/cache"
	"hellocq/common/log"

	goredis "github.com/go-redis/redis"
	"github.com/golang-jwt/jwt"
	"github.com/labstack/echo/v4"
)

// CheckLogin 校验登录状态
func JwtAuth(next echo.HandlerFunc) echo.HandlerFunc {
	return func(c echo.Context) error {
		c.Response().Header().Set("version", version)

		xtoken := c.Request().Header.Get("x-token")
		if xtoken == "" {
			return c.JSON(401, code.UnauthorizedResp)
		}
		var mc = new(service.Claims)
		token, err := jwt.ParseWithClaims(xtoken, mc, keyFunc)
		if err != nil {
			log.NewLog().Errorln(err)
			return c.JSON(401, code.UnauthorizedResp)
		}
		if !token.Valid {
			return c.JSON(401, code.UnauthorizedResp)
		}
		rToken, err := cache.GoRedisClient.Get(service.JwtRedisKey(mc.Uid)).Result()
		if err != nil && !errors.Is(err, goredis.Nil) {
			log.NewLog().Errorln(err)
			return c.JSON(401, code.UnauthorizedResp)
		}
		if rToken == "" {
			return c.JSON(401, code.UnauthorizedResp)
		}
		if xtoken != rToken {
			return c.JSON(401, code.UnauthorizedResp)
		}
		c.Set("uid", mc.Uid)
		if err := next(c); err != nil {
			c.Error(err)
		}
		return nil
	}
}

func keyFunc(_ *jwt.Token) (i interface{}, err error) {
	return service.JwtSecret, nil
}

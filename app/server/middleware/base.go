package middleware

import (
	"hellocq/app/server/code"
	"hellocq/common/conf"

	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
)

const (
	version = "hellocq_go_api/0.0.1"
)

// BasicAuth 基础校验
var BasicAuth = middleware.BasicAuth(func(id, key string, ctx echo.Context) (bool, error) {
	if key == "" {
		return false, ctx.JSON(403, code.NoPermissionResp)
	}
	if len(conf.AccessUser.User.List) == 0 {
		return false, ctx.JSON(403, code.NoPermissionResp)
	}
	pass := false
	for _, v := range conf.AccessUser.User.List {
		if key == v.Key {
			pass = true
		}
	}
	if !pass {
		return false, ctx.JSON(403, code.NoPermissionResp)
	}
	return true, nil
})

// Process 预留中间件
func Process(next echo.HandlerFunc) echo.HandlerFunc {
	return func(c echo.Context) error {
		c.Response().Header().Set("version", version)

		if err := next(c); err != nil {
			c.Error(err)
		}
		return nil
	}
}

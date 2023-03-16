package routers

import (
	"hellocq/app/server/code"
	"hellocq/app/server/handler"
	mid "hellocq/app/server/middleware"
	"hellocq/app/server/service"
	"hellocq/common/log"

	"github.com/labstack/echo/v4"
)

type Router struct {
	Log     *log.Log
	Handler *handler.Handler
}

// SetRouter 基础路由
func (r *Router) SetRouter(e *echo.Echo) {

	api := e.Group("/v1")

	api.Any("/", func(c echo.Context) error {
		c.JSON(200, code.HelloCQResp)
		return nil
	})

	api.POST("/token/refresh", service.RefreshToken) //刷新token

	api.Use(mid.Process)
	api.Use(mid.BasicAuth)

	//用户模块
	users := api.Group("/user")
	{
		users.POST("/login", r.Handler.Login)       //登录
		users.POST("/register", r.Handler.Register) //注册
		users.GET("/:id", r.Handler.GetUserById)    //根据id获取信息

		users.Use(mid.JwtAuth) //校验登录状态
	}

}

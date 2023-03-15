package routers

import (
	"hellocq/app/server/code"
	"hellocq/app/server/handler"
	mid "hellocq/app/server/middleware"
	"hellocq/common/log"

	"github.com/labstack/echo/v4"
)

type Router struct {
	Log     *log.Log
	Handler *handler.Handler
}

func (r *Router) SetRouter(e *echo.Echo) {

	api := e.Group("/v1")

	api.Any("/", func(c echo.Context) error {
		c.JSON(200, code.HelloCQResp)
		return nil
	})

	api.Use(mid.Process)
	api.Use(mid.BasicAuth)

	//用户模块
	users := api.Group("/user")
	{
		users.POST("/login", r.Handler.Login)
		// users.POST("/register", r.Handler.Register)
		users.GET("/:id", r.Handler.GetUserById)
	}

}

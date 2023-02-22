package routers

import (
	"hellocq/app/server/service"
	"hellocq/common/log"

	"github.com/labstack/echo/v4"
)

type Router struct {
	Log *log.Log
	S   *service.Service
}

func (r *Router) SetRouter(e *echo.Echo) {
	api := e.Group("/v1")
	api.GET("/users/:id", r.S.GetUsers)
}

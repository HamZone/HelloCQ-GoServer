package routers

import (
	"MyGoFramework/app/server/service"
	"MyGoFramework/common/log"

	"github.com/labstack/echo/v4"
)

type Router struct {
	Log *log.Log
}

func (r *Router) SetRouter(e *echo.Echo) {
	api := e.Group("/v1")
	api.GET("/hi", service.Hi)
}

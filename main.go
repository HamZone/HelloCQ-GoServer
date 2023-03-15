package main

import (
	"hellocq/bootstrap"
	"hellocq/common/conf"
	"hellocq/common/log"

	"hellocq/app/server/handler"
	"hellocq/app/server/routers"

	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
)

func main() {
	bootstrap.Init()

	e := echo.New()
	e.Use(middleware.Recover())
	e.Use(middleware.RequestID())
	e.Use(middleware.Secure())
	e.Use(middleware.BodyLimit("20M"))

	e.Logger.SetOutput(log.LogIO)
	e.HideBanner = true

	r := routers.Router{Log: log.NewLog(), Handler: handler.NewHandler()}

	r.SetRouter(e)

	log.NewLog().Infoln("starting server at:", conf.AppConf.App.HostPort)
	e.Start(conf.AppConf.App.HostPort)
}

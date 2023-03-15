package handler

import "hellocq/app/server/service"

type Handler struct {
	Service *service.Service
}

func NewHandler() *Handler {
	return &Handler{
		Service: service.NewService(),
	}
}

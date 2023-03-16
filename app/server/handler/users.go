package handler

import (
	"hellocq/app/server/code"
	"hellocq/app/server/entities"

	"net/http"
	"strconv"

	"github.com/labstack/echo/v4"
)

// Register 注册
func (h *Handler) Register(e echo.Context) error {
	var param entities.RegisterParam
	err := e.Bind(&param)
	if err != nil {
		return e.JSON(http.StatusBadRequest, code.ParamErrResp)
	}
	res, err := h.Service.Register(param)
	if err != nil {
		return e.JSON(http.StatusInternalServerError, res)
	}
	return e.JSON(http.StatusOK, res)
}

// Login 登录
func (h *Handler) Login(e echo.Context) error {
	var param entities.LoginParam
	err := e.Bind(&param)
	if err != nil {
		return e.JSON(http.StatusBadRequest, code.ParamErrResp)
	}
	param.Ip = e.RealIP()
	res, err := h.Service.Login(param)
	if err != nil {
		return e.JSON(http.StatusInternalServerError, res)
	}
	return e.JSON(http.StatusOK, res)
}

// GetUserById 根据ID获取用户信息
func (h *Handler) GetUserById(e echo.Context) error {
	id, err := strconv.Atoi(e.Param("id"))
	if err != nil {
		return e.JSON(http.StatusBadRequest, code.ParamErrResp)
	}
	res, err := h.Service.GetUsers(id)
	if err != nil {
		return e.JSON(http.StatusInternalServerError, code.ParamErrResp)
	}
	if res.Uid == 0 {
		return e.JSON(http.StatusNotFound, code.DataNotfoundResp)
	}
	return e.JSON(http.StatusOK, code.Response(entities.GetUser{
		Id:           res.Uid,
		Username:     res.Username,
		GroupId:      res.GroupId,
		MemberId:     res.MemberId,
		Gender:       res.Gender,
		RegisterDate: res.RegisterDate,
	}))
}

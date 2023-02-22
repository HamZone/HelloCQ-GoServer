package service

import (
	entities "hellocq/app/server/entities/out"
	v1 "hellocq/app/server/entities/out/v1"
	"net/http"
	"strconv"

	"github.com/labstack/echo/v4"
)

// GetUsers 通过 ID 获取用户信息
func (s *Service) GetUsers(e echo.Context) error {
	id, err := strconv.Atoi(e.Param("id"))
	if err != nil {
		return e.JSON(http.StatusBadRequest, entities.ParamErr)
	}
	res, err := s.dao.GetUserById(e.Request().Context(), id)
	if err != nil {
		s.log.Errorln(err)
		return e.JSON(http.StatusInternalServerError, entities.DbErr)
	}
	return e.JSON(http.StatusOK, entities.Response{
		Data: v1.GetUser{
			Id:           res.Uid,
			Username:     res.Username,
			GroupId:      res.GroupId,
			MemberId:     res.MemberId,
			Gender:       res.Gender,
			RegisterDate: res.RegisterDate,
		},
	})
}

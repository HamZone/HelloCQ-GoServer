package service

import (
	"crypto/md5"
	"fmt"
	"hellocq/app/server/code"
	"hellocq/app/server/entities"
	"hellocq/common/model"
	"time"
)

// Register 注册用户
func (s *Service) Register(param entities.RegisterParam) (entities.Response, error) {
	var (
		res entities.Response
	)
	if status, msg := RegisterValidator(param); !status {
		res.Code, res.Message = 406, msg
		return res, nil
	}
	md5Password := fmt.Sprintf("%x", md5.Sum([]byte(param.Password)))

	err := s.dao.Insert(model.MemberTable{
		Username:     param.Username,
		Password:     md5Password,
		Email:        param.Email,
		RegisterDate: time.Now().Unix(),
	})

	if err != nil {
		s.log.Errorln(err)
		res.Code, res.Message = 500, code.DbErrResp.Message
		return res, code.ErrDb
	}
	return code.SuccessResp, nil
}

// Login 登录
func (s *Service) Login(param entities.LoginParam) (entities.Response, error) {
	var (
		res entities.Response
	)
	if status, msg := LoginVlidator(param); !status {
		res.Code, res.Message = 406, msg
		return res, nil
	}
	info, err := s.dao.GetUserByUsername(param.Username)
	if err != nil {
		s.log.Errorln(err)
		res.Code, res.Message = 500, code.DbErrResp.Message
		return res, code.ErrDb
	}
	if info.Uid == 0 {
		return code.DataNotfoundResp, nil
	}
	md5Password := fmt.Sprintf("%x", md5.Sum([]byte(param.Password)))
	if md5Password != info.Password {
		res.Code, res.Message = 406, "password not match"
		return res, nil
	}
	return code.SuccessResp, nil
}

// GetUsers 通过 ID 获取用户信息
func (s *Service) GetUsers(id int) (model.MemberTable, error) {
	var (
		res model.MemberTable
	)
	res, err := s.dao.GetUserById(id)
	if err != nil {
		s.log.Errorln(err)
		return res, err
	}
	return res, nil
}

package service

import "hellocq/app/server/entities"

// RegisterValidator 注册参数校验器
func RegisterValidator(param entities.RegisterParam) (bool, string) {
	if param.Username == "" {
		return false, "username require"
	}
	if param.Password == "" {
		return false, "password require"
	}
	if param.Email == "" {
		return false, "email require"
	}

	return true, ""
}

// LoginVlidator 登录参数校验器
func LoginVlidator(param entities.LoginParam) (bool, string) {
	if param.Username == "" {
		return false, "username require"
	}
	if param.Password == "" {
		return false, "password require"
	}
	//尝试次数限制
	return true, ""
}

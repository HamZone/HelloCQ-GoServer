package service

import (
	"hellocq/app/server/cache"
	"hellocq/app/server/code"
	"hellocq/app/server/entities"
	"hellocq/common/model"
	"regexp"
	"unicode/utf8"
)

const (
	usernameReg = "^[a-zA-Z0-9\u4e00-\u9fa5]+$"
	emailReg    = `\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*`
)

// RegisterValidator 注册参数校验器
func RegisterValidator(param entities.RegisterParam) (bool, string) {
	if param.Username == "" {
		return false, "username require"
	}
	if utf8.RuneCountInString(param.Username) < 3 ||
		utf8.RuneCountInString(param.Username) > 15 {
		return false, "username length invalid"
	}
	if param.Password == "" {
		return false, "password require"
	}
	if param.Username == param.Password {
		return false, "password can be same as username"
	}

	if utf8.RuneCountInString(param.Password) < 6 ||
		utf8.RuneCountInString(param.Password) > 16 {
		return false, "password length invalid"
	}

	if param.Email == "" {
		return false, "email require"
	}

	//用户名校验
	match, err := regexp.MatchString(usernameReg, param.Username)
	if err != nil {
		return false, err.Error()
	}

	if !match {
		return false, "username invalid"
	}

	//邮箱校验
	reg := regexp.MustCompile(emailReg)
	if !reg.MatchString(param.Email) {
		return false, "email invalid"
	}

	if !param.TermStatus {
		return false, "term false"
	}

	//用户名是否重复
	info, err := model.NewDao().GetUserByUsername(param.Username)
	if err != nil {
		return false, code.ErrDb.Error()
	}
	if info.Uid != 0 {
		return false, "username exist"
	}

	//邮箱是否重复
	emailStatus, err := model.NewDao().EmailExist(param.Email)
	if err != nil {
		return false, code.ErrDb.Error()
	}
	if emailStatus {
		return false, "email exist"
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

	match, err := regexp.MatchString(usernameReg, param.Username)
	if err != nil {
		return false, err.Error()
	}

	if !match {
		//尝试次数限制
		if cache.LoginLimit(param.Username) {
			return false, "fail to much"
		}
		return false, "username invalid"
	}

	return true, ""
}

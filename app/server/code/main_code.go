package code

import (
	"errors"
	"hellocq/app/server/entities"
	"net/http"
)

const (
	SuccessCode = 200
	SuccessMsg  = "SUCCESS"
	FailMsg     = "FAIL"
)

// 错误码响应
// var (
// 	Success      = New(200)
// 	NoPermission = New(403)
// 	Panic        = New(500)
// )

const (
	dbErrMsg    = "database error"
	paramErrMsg = "param invalid"
)

var (
	ErrDb = errors.New(dbErrMsg)
)

var (
	NoPermissionResp = entities.Response{Code: http.StatusForbidden, Message: "Not Authorized"}
	HelloCQResp      = entities.Response{Code: http.StatusOK, Message: "hello CQ"}
	SuccessResp      = entities.Response{Code: http.StatusOK, Message: SuccessMsg}
	DbErrResp        = entities.Response{Code: http.StatusInternalServerError, Message: dbErrMsg}
	ParamErrResp     = entities.Response{Code: http.StatusBadRequest, Message: paramErrMsg}
	DataNotfoundResp = entities.Response{Code: http.StatusNotFound, Message: "data not found", Data: nil}
)

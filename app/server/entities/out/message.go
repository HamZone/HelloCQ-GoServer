package entities

import "net/http"

const (
	dbErrMsg    = "database error"
	paramErrMsg = "param invalid"
)

var (
	DbErr = Response{Code: http.StatusInternalServerError, Message: dbErrMsg}

	ParamErr = Response{Code: http.StatusBadRequest, Message: paramErrMsg}
)

type Response struct {
	Code    int         `json:"code,omitempty"`
	Message string      `json:"message,omitempty"`
	Data    interface{} `json:"data,omitempty"`
}

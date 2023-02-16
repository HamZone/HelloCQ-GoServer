package code

const (
	SuccessCode = 200
	SuccessMsg  = "SUCCESS"
	FailMsg     = "FAIL"
)

// 错误码响应
var (
	Success      = New(200)
	NoPermission = New(403)
	Panic        = New(500)
)

package entities

// RegisterParam 用户注册参数
type RegisterParam struct {
	Username   string `json:"username"`
	Password   string `json:"password"`
	Email      string `json:"email"`
	Reason     string `json:"reason"`      //注册原因
	TermStatus bool   `json:"term_status"` //条款接受状态
}

type LoginParam struct {
	Username string `json:"username"`
	Password string `json:"password"`
}

type GetUser struct {
	Id           int64  `json:"id"`
	Username     string `json:"username"`
	GroupId      int8   `json:"groupId"`
	MemberId     int8   `json:"menberId"`
	Gender       int8   `json:"gender"`
	RegisterDate int64  `json:"registerDate"`
}

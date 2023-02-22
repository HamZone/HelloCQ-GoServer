package v1

type GetUser struct {
	Id           int64  `json:"id"`
	Username     string `json:"username"`
	GroupId      int8   `json:"groupId"`
	MemberId     int8   `json:"menberId"`
	Gender       int8   `json:"gender"`
	RegisterDate int64  `json:"registerDate"`
}

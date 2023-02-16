package model

const MemberTableName = "pw_member"

type MemberTable struct {
	Uid          int64
	Username     string
	Password     string
	Email        string
	GroupId      int8
	MemberId     int8
	Gender       int8
	RegisterDate int64
}

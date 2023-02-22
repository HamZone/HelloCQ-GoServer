package model

import (
	"context"
	"errors"

	"gorm.io/gorm"
)

// 用户主信息表
const MemberTableName = "pw_members"

type MemberTable struct {
	Uid          int64  `gorm:"column:uid"`
	Username     string `gorm:"column:username"`
	Password     string `gorm:"column:password"`
	Email        string `gorm:"column:email"`
	GroupId      int8   `gorm:"column:groupid"`
	MemberId     int8   `gorm:"column:memberid"`
	Gender       int8   `gorm:"column:gender"`
	RegisterDate int64  `gorm:"column:regdate"`
}

func (m *Dao) GetUserById(c context.Context, id int) (MemberTable, error) {
	var t MemberTable
	err := m.Db.WithContext(c).Table(MemberTableName).
		Where("uid = ?", id).First(&t).Error
	if err != nil && !errors.Is(err, gorm.ErrRecordNotFound) {
		return t, err
	}
	return t, nil
}

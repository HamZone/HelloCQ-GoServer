package model

import (
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

func (m *Dao) GetUserById(id int) (MemberTable, error) {
	var t MemberTable
	err := m.Db.Table(MemberTableName).
		Where("uid = ?", id).First(&t).Error
	if err != nil && !errors.Is(err, gorm.ErrRecordNotFound) {
		return t, err
	}
	return t, nil
}

func (m *Dao) GetUserByUsername(username string) (MemberTable, error) {
	var t MemberTable
	err := m.Db.Table(MemberTableName).
		Where("username = ?", username).First(&t).Error
	if err != nil && !errors.Is(err, gorm.ErrRecordNotFound) {
		return t, err
	}
	return t, nil
}

func (m *Dao) Insert(p MemberTable) error {
	return m.Db.Table(MemberTableName).Create(&p).Error
}

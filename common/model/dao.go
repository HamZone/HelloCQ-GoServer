package model

import (
	"context"
	"hellocq/common/database"

	"gorm.io/gorm"
)

type Dao struct {
	Db *gorm.DB
}

func NewDao() *Dao {
	return &Dao{
		Db: database.DB,
	}
}

func (d *Dao) BeginTran(c context.Context) *gorm.DB {
	return d.Db.Begin().WithContext(c)
}

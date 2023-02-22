package service

import (
	"hellocq/common/log"
	"hellocq/common/model"
)

type Service struct {
	dao *model.Dao
	log *log.Log
}

func NewService() *Service {
	return &Service{
		dao: model.NewDao(),
		log: log.NewLog(),
	}
}

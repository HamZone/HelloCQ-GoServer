package database

import (
	"MyGoFramework/common/conf"
	"MyGoFramework/common/log"

	gmysql "gorm.io/driver/mysql"
	"gorm.io/gorm"
	"gorm.io/gorm/logger"
)

var DB *gorm.DB

func Init() {
	var err error
	c := conf.MySQLConf.MySQL
	DB, err = newMysqlConn(c.HostPort, c.User, c.PWD, c.DataBaseName, c.Min, c.Max)
	if err != nil {
		log.NewLog().Fatalf("conn db error %s", err.Error())
	}
}

func newMysqlConn(host, user, password, dbname string, maxConn, minConn int) (*gorm.DB, error) {
	url := user + ":" + password + "@tcp" + "(" + host + ")/" + dbname + "?&charset=utf8mb4&parseTime=True&loc=Asia%2FShanghai"
	db, err := gorm.Open(gmysql.Open(url), &gorm.Config{})
	if err != nil {
		return nil, err
	}
	sqlDB, err := db.DB()
	if err != nil {
		return nil, err
	}
	sqlDB.SetMaxOpenConns(maxConn)
	sqlDB.SetMaxIdleConns(minConn)
	db.Logger = logger.Default.LogMode(logger.Silent)
	return db, err
}

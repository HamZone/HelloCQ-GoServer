package cache

import (
	"MyGoFramework/common/conf"
	"MyGoFramework/common/log"

	goredis "github.com/go-redis/redis"
)

var GoRedisClient *goredis.Client

func Init() {
	c := conf.RedisConf.Redis
	GoRedisClient = goredis.NewClient(&goredis.Options{
		Addr:     c.HostPort,
		Password: c.Password,
		DB:       c.DB,
	})
	_, err := GoRedisClient.Ping().Result()
	if err != nil {
		log.NewLog().Panicln(err.Error())
	}
}

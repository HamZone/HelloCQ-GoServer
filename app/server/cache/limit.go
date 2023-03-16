package cache

import (
	"hellocq/common/cache"
	"hellocq/common/log"
	"time"
)

// LoginLimit 登录尝试限制
func LoginLimit(username string) bool {
	key := "h_login_limit_" + username
	status, err := cache.GoRedisClient.Exists(key).Result()
	if err != nil {
		log.NewLog().Errorln(err)
		return true
	}
	if status == 0 {
		err = cache.GoRedisClient.SetNX(key, 1, 86400*time.Second).Err()
		if err != nil {
			log.NewLog().Errorln(err)
			return true
		}
		return false
	}
	times, err := cache.GoRedisClient.Get(key).Int()
	if err != nil {
		log.NewLog().Errorln(err)
		return true
	}
	if times > 5 {
		log.NewLog().Infof("用户:%s 尝试登录失败次数过多，限制登录", username)
		return true
	}
	err = cache.GoRedisClient.Incr(key).Err()
	if err != nil {
		log.NewLog().Errorln(err)
		return true
	}
	return false
}

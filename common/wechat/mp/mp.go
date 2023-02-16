package mp

import (
	"MyGoFramework/common/conf"

	"github.com/silenceper/wechat/cache"
	wechat "github.com/silenceper/wechat/v2"
	"github.com/silenceper/wechat/v2/officialaccount"
	offConfig "github.com/silenceper/wechat/v2/officialaccount/config"
)

var MPAccount *officialaccount.OfficialAccount

func InitOfficalWechat() {
	MPAccount = newWcAccount()
}

func newWcAccount() *officialaccount.OfficialAccount {
	wc := wechat.NewWechat()
	redisOpts := &cache.RedisOpts{
		Host:        conf.RedisConf.Redis.HostPort,
		Database:    conf.RedisConf.Redis.DB,
		MaxActive:   10,
		MaxIdle:     10,
		IdleTimeout: 60, //second
		Password:    conf.RedisConf.Redis.Password,
	}
	redisCache := cache.NewRedis(redisOpts)

	// memory := cache.NewMemory()
	conf := &offConfig.Config{
		AppID:          "",
		AppSecret:      "",
		Token:          "",
		EncodingAESKey: "",
		Cache:          redisCache,
	}
	return wc.GetOfficialAccount(conf)
}

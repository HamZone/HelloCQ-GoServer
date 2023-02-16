package bootstrap

import (
	"hellocq/app/cron"
	"hellocq/app/server/code"
	"hellocq/common/cache"
	"hellocq/common/conf"
	"hellocq/common/database"
	"hellocq/common/log"
	"hellocq/common/tools"
	"hellocq/common/wechat/mp"
)

func Init() {
	log.InitLog()          //日志
	conf.Init()            //配置文件
	database.Init()        //数据库
	cache.Init()           //缓存
	code.I18n()            //响应码
	mp.InitOfficalWechat() //微信公众号c

	tools.Go(func() { cron.NewCrontab().InitTask().Start() })
}

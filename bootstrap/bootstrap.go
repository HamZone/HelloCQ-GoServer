package bootstrap

import (
	"MyGoFramework/app/cron"
	"MyGoFramework/app/server/code"
	"MyGoFramework/common/cache"
	"MyGoFramework/common/conf"
	"MyGoFramework/common/database"
	"MyGoFramework/common/log"
	"MyGoFramework/common/tools"
	"MyGoFramework/common/wechat/mp"
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

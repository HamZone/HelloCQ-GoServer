package conf

import (
	"MyGoFramework/common/tools"
	"log"

	"github.com/BurntSushi/toml"
)

type Config struct {
}

func Init() {
	c := newConfig()
	if err := c.getConfig(); err != nil {
		log.Fatalf("load config err %s", err.Error())
	}
}

func newConfig() *Config {
	return &Config{}
}

func (c *Config) getConfig() error {
	conf := []eConfig{}
	conf = append(conf, eConfig{FileName: "app.toml", Value: &AppConf})
	conf = append(conf, eConfig{FileName: "crontab.toml", Value: &CrontabConf})
	conf = append(conf, eConfig{FileName: "mysql.toml", Value: &MySQLConf})
	conf = append(conf, eConfig{FileName: "redis.toml", Value: &RedisConf})
	conf = append(conf, eConfig{FileName: "email.toml", Value: &ExMail})
	return c.parse(conf)
}

type eConfig struct {
	FileName string
	Value    interface{}
}

func (c *Config) parse(confs []eConfig) (err error) {
	for _, conf := range confs {
		_, err = toml.DecodeFile(tools.CheckFile("config/"+conf.FileName), conf.Value)
		if err != nil {
			return
		}
	}
	return
}

package conf

//AppConf AppConf
var AppConf app

var CrontabConf crontab

//MySQLConf MySQLConf
var MySQLConf mySQL

var RedisConf redis

var ExMail email

type app struct {
	App struct {
		HostPort string
	}
}

type mySQL struct {
	MySQL struct {
		HostPort     string
		User         string
		PWD          string
		DataBaseName string
		DatabaseLog  string
		Min          int
		Max          int
	}
}

type redis struct {
	Redis struct {
		HostPort string
		User     string
		Password string
		DB       int
	}
}

type email struct {
	Exmail struct {
		Host    string
		Port    int
		From    string
		Account EmailAccountInfo
	}
}

type EmailAccountInfo struct {
	User     string
	Password string
}

type crontab struct {
	Task map[string]taskInfo
}

type taskInfo struct {
	Spec   string
	Status string
}

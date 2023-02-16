package cron

import (
	"MyGoFramework/common/conf"
	"MyGoFramework/common/log"
	"fmt"
	"sync"

	cron "github.com/robfig/cron/v3"
)

type Crontab struct {
	log      *log.Log
	m        *sync.RWMutex       //读写锁
	cronTask map[string]TaskInfo //crontab任务配置
}

type TaskInfo struct {
	spec     string
	status   string //运行状态
	cron     *cron.Cron
	entryID  cron.EntryID
	taskFunc func()
}

func NewCrontab() *Crontab {
	return &Crontab{
		log:      log.NewLog(),
		cronTask: make(map[string]TaskInfo),
		m:        new(sync.RWMutex),
	}
}

func (c *Crontab) InitTask() *Crontab {
	c.addTask("test", func() { fmt.Println("crontab test running") })
	return c
}

func (c *Crontab) addTask(name string, taskFunc func()) *Crontab {
	c.m.RLock()
	if task, ok := conf.CrontabConf.Task[name]; !ok {
		c.m.RUnlock()
		c.log.Panicln("配置错误" + name)
	} else {
		c.m.RUnlock()
		c.m.Lock()
		defer c.m.Unlock()
		c.cronTask[name] = TaskInfo{
			spec:     task.Spec,
			status:   task.Status,
			cron:     cron.New(cron.WithSeconds()),
			taskFunc: taskFunc,
		}
	}
	return c
}

func (c *Crontab) startTask(name string) *Crontab {
	c.m.RLock()
	task, ok := c.cronTask[name]
	c.m.RUnlock()
	if ok {
		id, err := task.cron.AddFunc(task.spec, func() {
			task.taskFunc()
		})
		if err != nil {
			fmt.Println(err)
			return c
		}
		task.entryID = id
		task.cron.Start()
		c.m.Lock()
		c.cronTask[name] = task
		c.m.Unlock()
		c.log.Printf("%s :任务已启动\n", name)
	} else {
		c.log.Printf("Error:没有%s任务\n", name)
	}
	return c
}

func (c *Crontab) Start() {
	c.startAllTask()
}

func (c *Crontab) startAllTask() *Crontab {
	for k, v := range c.cronTask {
		if v.status == "on" {
			c.startTask(k)
		}
	}
	return c
}

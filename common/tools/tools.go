package tools

import (
	"fmt"
	"os"
	"runtime/debug"

	"MyGoFramework/common/log"
)

func Go(x func()) {
	go func() {
		defer func() {
			if err := recover(); err != nil {
				log.NewLog().Errorln(err)
				log.NewLog().Errorln(fmt.Sprint(string(debug.Stack())))
			}
		}()
		x()
	}()
}

func CheckFile(file string) string {
	for i := 0; i < 10; i++ {
		if _, err := os.Stat(file); err == nil {
			break
		} else {
			file = "../" + file
		}
	}
	return file
}

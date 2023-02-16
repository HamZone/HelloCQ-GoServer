package log

import (
	"fmt"
	"io"
	"os"
	"runtime"
	"strings"
	"time"

	uuid "github.com/satori/go.uuid"
	"github.com/sirupsen/logrus"
)

type Log struct {
	UUID uuid.UUID
	log  *logrus.Logger
}

// log 单例log
var log *logrus.Logger

// stdErrFileHandler 把文件句柄保存到全局变量，避免被GC回收
var stdErrFileHandler *os.File

var LogIO io.Writer

const (
	// PanicLevel level, highest level of severity. Logs and then calls panic with the
	// message passed to Debug, Info, ...
	PanicLevel logrus.Level = iota
	// FatalLevel level. Logs and then calls `os.Exit(1)`. It will exit even if the
	// logging level is set to Panic.
	FatalLevel
	// ErrorLevel level. Logs. Used for errors that should definitely be noted.
	// Commonly used for hooks to send errors to an error tracking service.
	ErrorLevel
	// WarnLevel level. Non-critical entries that deserve eyes.
	WarnLevel
	// InfoLevel level. General operational entries about what's going on inside the
	// application.
	InfoLevel
	// DebugLevel level. Usually only enabled when debugging. Very verbose logging.
	DebugLevel
)

func InitLog() {
	// esClient := es.EsClient
	log = logrus.New()
	level := DebugLevel
	timeData := time.Now().Format("2006_01_02")
	logFile, err := os.OpenFile("log/Go_"+timeData+".log", os.O_RDWR|os.O_CREATE|os.O_APPEND, 0666)
	if err != nil {
		fmt.Println(err.Error())
		return
	}
	stdErrFileHandler = logFile
	// redirectStderr(stdErrFileHandler) //处理 panic
	runtime.SetFinalizer(stdErrFileHandler, func(fd *os.File) {
		fd.Close()
	})
	// defer file.Close()
	mw := io.MultiWriter(stdErrFileHandler, os.Stdout)
	LogIO = mw
	setLog(mw, level)
}

// SetLog 设置日志重定向输出及日志级别
func setLog(fi io.Writer, level logrus.Level) {
	log.SetOutput(fi)
	log.SetLevel(level)
}

// NewLog new obj
func NewLog() *Log {
	return &Log{
		UUID: uuid.NewV4(),
		log:  log,
	}
}

func (e *Log) getBaseMsg() string {
	_, file, line, _ := runtime.Caller(3)
	tmp := strings.Split(file, "/")
	size := len(tmp)
	if size > 1 {
		file = tmp[size-1]
	}
	res := fmt.Sprintf("file:%s line:%d log:", file, line)
	if e.UUID != [16]byte{00000000 - 0000 - 0000 - 0000 - 000000000000} {
		res = fmt.Sprintf("%s %s", e.UUID, res)
	}
	return res
}

func (e *Log) getParamsf(format string) string {
	format = e.getBaseMsg() + "[" + format + "]"
	return format
}

// ln后缀的参数格式化
func (e *Log) getParamsln(args ...interface{}) []interface{} {
	base := e.getBaseMsg()
	params := []interface{}{}
	params = append(params, base)
	params = append(params, args...)
	return params
}

func (e *Log) Debugf(format string, args ...interface{}) {
	format = e.getParamsf(format)
	log.Debugf(format, args...)
}

func (e *Log) Printf(format string, args ...interface{}) {
	format = e.getParamsf(format)
	log.Printf(format, args...)
}

func (e *Log) Infof(format string, args ...interface{}) {
	format = e.getParamsf(format)
	log.Infof(format, args...)
}

func (e *Log) Warnf(format string, args ...interface{}) {
	format = e.getParamsf(format)
	log.Warnf(format, args...)
}

func (e *Log) Warningf(format string, args ...interface{}) {
	format = e.getParamsf(format)
	log.Warningf(format, args...)
}

func (e *Log) Errorf(format string, args ...interface{}) {
	format = e.getParamsf(format)
	log.Errorf(format, args...)
}

func (e *Log) Panicf(format string, args ...interface{}) {
	format = e.getParamsf(format)
	log.Panicf(format, args...)
}

func (e *Log) Fatalf(format string, args ...interface{}) {
	format = e.getParamsf(format)
	log.Fatalf(format, args...)
}

func (e *Log) Debugln(args ...interface{}) {
	params := e.getParamsln(args)
	log.Debugln(params...)
}

func (e *Log) Println(args ...interface{}) {
	params := e.getParamsln(args)
	log.Println(params...)
}

func (e *Log) Infoln(args ...interface{}) {
	params := e.getParamsln(args)
	log.Infoln(params...)
}

func (e *Log) Warnln(args ...interface{}) {
	params := e.getParamsln(args)
	log.Warnln(params...)
}

func (e *Log) Warningln(args ...interface{}) {
	params := e.getParamsln(args)
	log.Warningln(params...)
}

func (e *Log) Errorln(args ...interface{}) {
	params := e.getParamsln(args)
	log.Errorln(params...)
}

func (e *Log) Panicln(args ...interface{}) {
	params := e.getParamsln(args)
	log.Panicln(params...)
}

func (e *Log) Fatalln(args ...interface{}) {
	params := e.getParamsln(args)
	log.Fatalln(params...)
}

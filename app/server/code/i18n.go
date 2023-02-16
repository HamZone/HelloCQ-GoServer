package code

import (
	"MyGoFramework/common/tools"

	"github.com/BurntSushi/toml"
	"github.com/nicksnyder/go-i18n/v2/i18n"
	"golang.org/x/text/language"
)

//I18n 初始化i18n
func I18n() {
	bundle = i18n.NewBundle(language.Chinese)
	bundle.RegisterUnmarshalFunc("toml", toml.Unmarshal)
	bundle.LoadMessageFile(tools.CheckFile("i18n/zh-CN.toml"))
	bundle.LoadMessageFile(tools.CheckFile("i18n/en-US.toml"))
}

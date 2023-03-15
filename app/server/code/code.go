package code

import (
	"encoding/json"
	"fmt"
	"hellocq/app/server/entities"
	"hellocq/common/log"
	"io"
	"net/http"
	"strconv"

	"github.com/nicksnyder/go-i18n/v2/i18n"
	"golang.org/x/text/language"
)

var (
	_codes = map[int]struct{}{}
	bundle = i18n.NewBundle(language.Chinese)
)

func New(code int) entities.Response {
	return add(code)
}

func add(code int) entities.Response {
	if _, ok := _codes[code]; ok {
		log.NewLog().Warningln(fmt.Sprintf("Warning: code: %d already exist!!!", code))
	}
	_codes[code] = struct{}{}

	localizer := i18n.NewLocalizer(bundle, "zh-CN")

	i18Msg := localizer.MustLocalize(&i18n.LocalizeConfig{
		DefaultMessage: &i18n.Message{
			ID: strconv.Itoa(code),
			// Other: "internal server error",
		},
	})
	return entities.Response{
		Code:    code,
		Message: i18Msg,
	}
}

func Response(data interface{}) entities.Response {
	return entities.Response{
		Code:    SuccessCode,
		Message: SuccessMsg,
		Data:    data,
	}
}

func ResJSON(w http.ResponseWriter, data interface{}) {
	w.Header().Set("Content-Type", "application/json; charset=utf-8")
	content, err := json.Marshal(data)
	if err != nil {
		SystemError(w, err.Error(), http.StatusInternalServerError)
		return
	}
	io.WriteString(w, string(content))
}

func SystemError(w http.ResponseWriter, errMsg string, code int) {
	w.Header().Set("Content-Type", "application/json; charset=utf-8")
	w.Header().Set("X-Content-Type-Options", "nosniff")
	w.WriteHeader(code)
	content, _ := json.Marshal(&entities.Response{
		Code:    code,
		Message: errMsg,
	})
	io.WriteString(w, string(content))
}

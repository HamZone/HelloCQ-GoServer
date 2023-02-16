package tools

import (
	"fmt"
	"math/rand"
	"regexp"
	"time"
	"unicode"
)

func StringToStr(t string) *string {
	return &t
}

// IsChinese 是否存在中文
func IsChinese(str string) bool {
	for _, r := range str {
		if unicode.Is(unicode.Scripts["Han"], r) {
			return true
		}
	}
	return false
}

// MustWordOrNum 是否是英文和数字 true 合法
func MustWordOrNum(str string) bool {
	re, err := regexp.Compile(`^[a-zA-Z0-9]`)
	if err != nil {
		return false
	}
	return re.MatchString(str)
}

func PrtToString(v *string) string {
	return *v
}

func RadomCode() string {
	rnd := rand.New(rand.NewSource(time.Now().UnixNano()))
	return fmt.Sprintf("%04v", rnd.Int31n(10000))
}

func GenerateTradeNo() string {
	t := time.Now()
	date := t.Format("200601021504")
	nano := t.UnixMicro()
	rand := fmt.Sprintf("%03v", rand.New(rand.NewSource(time.Now().UnixNano())).Int31n(1000))
	return fmt.Sprintf("%s%d%s", date, nano, rand)
}

func InSlice(a string, b []string) bool {
	for _, v := range b {
		if v == a {
			return true
		}
	}
	return false
}

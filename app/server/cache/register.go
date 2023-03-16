package cache

import (
	"fmt"
)

func EmailCode(uid int64) string {
	key := fmt.Sprintf("h_reg_email_code_%d", uid)
	fmt.Sprintln(key)
	return ""
}

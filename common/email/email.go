package email

import (
	"MyGoFramework/common/conf"
	"fmt"

	"MyGoFramework/common/log"

	"gopkg.in/gomail.v2"
)

//SendEmail SendEmail
type SendEmail struct{}

//NewSendEmail NewSendEmail
func NewSendEmail() *SendEmail {
	return &SendEmail{}
}

//SendExmail 发送邮箱邮件
func (s *SendEmail) SendExmail(mailTo []string, subject string, body string) error {
	m := gomail.NewMessage()
	c := conf.ExMail
	fmt.Println(c)
	m.SetHeader("From", c.Exmail.Account.User)
	m.SetAddressHeader("From", c.Exmail.Account.User, c.Exmail.From) // 发件人
	m.SetHeader("To", mailTo...)
	m.SetHeader("Subject", subject)
	m.SetBody("text/html", body)
	d := gomail.NewDialer(c.Exmail.Host, c.Exmail.Port, c.Exmail.Account.User, c.Exmail.Account.Password)
	// d.TLSConfig = &tls.Config{InsecureSkipVerify: true}
	if err := d.DialAndSend(m); err != nil {
		log.NewLog().Errorf("发送邮件失败: %s, err:%s", mailTo, err.Error())
		return err
	}
	return nil
}

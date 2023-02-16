package aliyun

import (
	"github.com/aliyun/alibaba-cloud-sdk-go/services/dysmsapi"
)

type NewSMS struct{ Client *dysmsapi.Client }

func NewAliSMS() *NewSMS {
	client, err := dysmsapi.NewClientWithAccessKey("cn-shenzhen", "", "")
	if err != nil {
		return nil
	}
	return &NewSMS{
		Client: client,
	}
}

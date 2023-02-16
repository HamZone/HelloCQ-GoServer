package tools

import (
	"MyGoFramework/common/log"
	"bytes"
	"encoding/json"
	"io/ioutil"
	"net/http"
)

func Post(url string, jsonParam map[string]interface{}) error {
	b, err := json.Marshal(jsonParam)
	if err != nil {
		log.NewLog().Errorln(err)
		return err
	}
	resp, err := http.Post(url, "application/json", bytes.NewBuffer(b))
	if err != nil {
		log.NewLog().Errorln(err)
		return err
	}
	defer resp.Body.Close()
	body, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		log.NewLog().Errorln(err)
		return err
	}
	log.NewLog().Infoln("Post res: " + string(body))
	return nil
}

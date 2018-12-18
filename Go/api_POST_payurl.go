package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://merchant.atomicpay.io/api/v1/payurl"

	payload := strings.NewReader("{\"url_name\":\"REPLACE_WITH_VALUE\",\"url_expiry\":\"REPLACE_WITH_VALUE\",\"order_id\":\"REPLACE_WITH_VALUE\",
	\"order_price\":\"REPLACE_WITH_VALUE\",\"order_currency\":\"REPLACE_WITH_VALUE\",\"order_description\":\"REPLACE_WITH_VALUE\",\"transaction_speed\":\"REPLACE_WITH_VALUE\",
	\"notification_url\":\"REPLACE_WITH_VALUE\",\"notification_email\":\"REPLACE_WITH_VALUE\",\"redirect_url\":\"REPLACE_WITH_VALUE\"} ")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("Content-Type", "application/json")
	req.Header.Add("Authorization", "Basic REPLACE_WITH_BASE64_ENCODED_CREDENTIALS")
	req.Header.Add("cache-control", "no-cache")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
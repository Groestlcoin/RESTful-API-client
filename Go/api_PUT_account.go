package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://merchant.atomicpay.io/api/v1/account"

	payload := strings.NewReader("{\"account_name\":\"REPLACE_WITH_VALUE\",\"account_website\":\"REPLACE_WITH_VALUE\",\"account_email\":\"REPLACE_WITH_VALUE\",\"account_currency\":\"REPLACE_WITH_VALUE\",\"account_cryptocurrency\":\"REPLACE_WITH_VALUE\",\"account_expirationTime\":\"REPLACE_WITH_VALUE\",\"account_transactionSpeed\":\"REPLACE_WITH_VALUE\",\"account_notificationURL\":\"REPLACE_WITH_VALUE\"} ")

	req, _ := http.NewRequest("PUT", url, payload)

	req.Header.Add("Content-Type", "application/json")
	req.Header.Add("Authorization", "Basic REPLACE_WITH_BASE64_ENCODED_CREDENTIALS")
	req.Header.Add("cache-control", "no-cache")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
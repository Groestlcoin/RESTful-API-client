package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://merchant.atomicpay.io/api/v1/authorization"

	payload := strings.NewReader("{\"account_id\":\"REPLACE_WITH_VALUE\",\"account_privateKey\":\"REPLACE_WITH_VALUE\",\"account_publicKey\":\"REPLACE_WITH_VALUE\"}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("Content-Type", "application/json")
	req.Header.Add("cache-control", "no-cache")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
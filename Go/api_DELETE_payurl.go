package main

import (
	"fmt"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://merchant.atomicpay.io/api/v1/payurl/REPLACE_WITH_VALUE"

	req, _ := http.NewRequest("DELETE", url, nil)

	req.Header.Add("Content-Type", "application/json")
	req.Header.Add("Authorization", "Basic REPLACE_WITH_BASE64_ENCODED_CREDENTIALS")
	req.Header.Add("cache-control", "no-cache")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
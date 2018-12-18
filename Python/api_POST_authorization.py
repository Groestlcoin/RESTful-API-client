import requests

url = "https://merchant.atomicpay.io/api/v1/authorization"

payload = "{\"account_id\":\"REPLACE_WITH_VALUE\",\"account_privateKey\":\"REPLACE_WITH_VALUE\",\"account_publicKey\":\"REPLACE_WITH_VALUE\"}"
headers = {
    'Content-Type': "application/json",
    'cache-control': "no-cache"
    }

response = requests.request("POST", url, data=payload, headers=headers)

print(response.text)
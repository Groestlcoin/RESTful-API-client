import requests

url = "https://merchant.atomicpay.io/api/v1/account"

payload = "{\"account_name\":\"REPLACE_WITH_VALUE\",\"account_website\":\"REPLACE_WITH_VALUE\",\"account_email\":\"REPLACE_WITH_VALUE\",\"account_currency\":\"REPLACE_WITH_VALUE\",\"account_cryptocurrency\":\"REPLACE_WITH_VALUE\",\"account_expirationTime\":\"REPLACE_WITH_VALUE\",\"account_transactionSpeed\":\"REPLACE_WITH_VALUE\",\"account_notificationURL\":\"REPLACE_WITH_VALUE\"} "
headers = {
    'Content-Type': "application/json",
    'Authorization': "Basic REPLACE_WITH_BASE64_ENCODED_CREDENTIALS",
    'cache-control': "no-cache"
    }

response = requests.request("PUT", url, data=payload, headers=headers)

print(response.text)
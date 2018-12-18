import requests

url = "https://merchant.atomicpay.io/api/v1/payurl"

payload = "{\"url_name\":\"REPLACE_WITH_VALUE\",\"url_expiry\":\"REPLACE_WITH_VALUE\",\"order_id\":\"REPLACE_WITH_VALUE\",\"order_price\":\"REPLACE_WITH_VALUE\",
\"order_currency\":\"REPLACE_WITH_VALUE\",\"order_description\":\"REPLACE_WITH_VALUE\",\"transaction_speed\":\"REPLACE_WITH_VALUE\",\"notification_url\":\"REPLACE_WITH_VALUE\",
\"notification_email\":\"REPLACE_WITH_VALUE\",\"redirect_url\":\"REPLACE_WITH_VALUE\"} "
headers = {
    'Content-Type': "application/json",
    'Authorization': "Basic REPLACE_WITH_BASE64_ENCODED_CREDENTIALS",
    'cache-control': "no-cache"
    }

response = requests.request("POST", url, data=payload, headers=headers)

print(response.text)
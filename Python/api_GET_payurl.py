import requests

url = "https://merchant.atomicpay.io/api/v1/payurl/REPLACE_WITH_VALUE"

payload = ""
headers = {
    'Content-Type': "application/json",
    'Authorization': "Basic REPLACE_WITH_BASE64_ENCODED_CREDENTIALS",
    'cache-control': "no-cache"
    }

response = requests.request("GET", url, data=payload, headers=headers)

print(response.text)
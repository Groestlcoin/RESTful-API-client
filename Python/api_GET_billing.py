import requests

url = "https://merchant.atomicpay.io/api/v1/billing"

querystring = {"status":"REPLACE_WITH_VALUE","dateStart":"REPLACE_WITH_VALUE","dateEnd":"REPLACE_WITH_VALUE"}

payload = ""
headers = {
    'Content-Type': "application/json",
    'Authorization': "Basic REPLACE_WITH_BASE64_ENCODED_CREDENTIALS",
    'cache-control': "no-cache"
    }

response = requests.request("GET", url, data=payload, headers=headers, params=querystring)

print(response.text)
require 'uri'
require 'net/http'

url = URI("https://merchant.atomicpay.io/api/v1/transactions?crypto_code=REPLACE_WITH_VALUE&dateStart=REPLACE_WITH_VALUE&dateEnd=REPLACE_WITH_VALUE")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Get.new(url)
request["Content-Type"] = 'application/json'
request["Authorization"] = 'Basic REPLACE_WITH_BASE64_ENCODED_CREDENTIALS'
request["cache-control"] = 'no-cache'

response = http.request(request)
puts response.read_body
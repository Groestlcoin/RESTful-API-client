require 'uri'
require 'net/http'

url = URI("https://merchant.atomicpay.io/api/v1/account")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Put.new(url)
request["Content-Type"] = 'application/json'
request["Authorization"] = 'Basic REPLACE_WITH_BASE64_ENCODED_CREDENTIALS'
request["cache-control"] = 'no-cache'
request.body = "{\"account_name\":\"REPLACE_WITH_VALUE\",\"account_website\":\"REPLACE_WITH_VALUE\",\"account_email\":\"REPLACE_WITH_VALUE\",\"account_currency\":\"REPLACE_WITH_VALUE\",\"account_cryptocurrency\":\"REPLACE_WITH_VALUE\",\"account_transactionSpeed\":\"REPLACE_WITH_VALUE\",\"account_notificationURL\":\"REPLACE_WITH_VALUE\"} "

response = http.request(request)
puts response.read_body
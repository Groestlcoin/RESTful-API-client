require 'uri'
require 'net/http'

url = URI("https://merchant.atomicpay.io/api/v1/payurl")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Post.new(url)
request["Content-Type"] = 'application/json'
request["Authorization"] = 'Basic REPLACE_WITH_BASE64_ENCODED_CREDENTIALS'
request["cache-control"] = 'no-cache'
request.body = "{\"url_name\":\"REPLACE_WITH_VALUE\",\"url_expiry\":\"REPLACE_WITH_VALUE\",\"order_id\":\"REPLACE_WITH_VALUE\",
\"order_price\":\"REPLACE_WITH_VALUE\",\"order_currency\":\"REPLACE_WITH_VALUE\",\"order_description\":\"REPLACE_WITH_VALUE\",
\"transaction_speed\":\"REPLACE_WITH_VALUE\",\"notification_url\":\"REPLACE_WITH_VALUE\",\"notification_email\":\"REPLACE_WITH_VALUE\",
\"redirect_url\":\"REPLACE_WITH_VALUE\"} "

response = http.request(request)
puts response.read_body
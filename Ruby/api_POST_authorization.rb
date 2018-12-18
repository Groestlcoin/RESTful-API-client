require 'uri'
require 'net/http'

url = URI("https://merchant.atomicpay.io/api/v1/authorization")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Post.new(url)
request["Content-Type"] = 'application/json'
request["cache-control"] = 'no-cache'
request.body = "{\"account_id\":\"REPLACE_WITH_VALUE\",\"account_privateKey\":\"REPLACE_WITH_VALUE\",\"account_publicKey\":\"REPLACE_WITH_VALUE\"}"

response = http.request(request)
puts response.read_body
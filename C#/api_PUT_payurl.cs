var client = new RestClient("https://merchant.atomicpay.io/api/v1/payurl/REPLACE_WITH_VALUE");
var request = new RestRequest(Method.PUT);
request.AddHeader("cache-control", "no-cache");
request.AddHeader("Authorization", "Basic REPLACE_WITH_BASE64_ENCODED_CREDENTIALS");
request.AddHeader("Content-Type", "application/json");
request.AddParameter("undefined", "{\"url_name\":\"REPLACE_WITH_VALUE\",\"url_expiry\":\"REPLACE_WITH_VALUE\",\"order_id\":\"REPLACE_WITH_VALUE\",
\"order_price\":\"REPLACE_WITH_VALUE\",\"order_currency\":\"REPLACE_WITH_VALUE\",\"order_description\":\"REPLACE_WITH_VALUE\",\"transaction_speed\":\"REPLACE_WITH_VALUE\",
\"notification_url\":\"REPLACE_WITH_VALUE\",\"notification_email\":\"REPLACE_WITH_VALUE\",\"redirect_url\":\"REPLACE_WITH_VALUE\"} ", ParameterType.RequestBody);
IRestResponse response = client.Execute(request);
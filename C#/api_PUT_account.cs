var client = new RestClient("https://merchant.atomicpay.io/api/v1/account");
var request = new RestRequest(Method.PUT);
request.AddHeader("cache-control", "no-cache");
request.AddHeader("Authorization", "Basic REPLACE_WITH_BASE64_ENCODED_CREDENTIALS");
request.AddHeader("Content-Type", "application/json");
request.AddParameter("undefined", "{\"account_name\":\"REPLACE_WITH_VALUE\",\"account_website\":\"REPLACE_WITH_VALUE\",\"account_email\":\"REPLACE_WITH_VALUE\",\"account_currency\":\"REPLACE_WITH_VALUE\",\"account_cryptocurrency\":\"REPLACE_WITH_VALUE\",\"account_transactionSpeed\":\"REPLACE_WITH_VALUE\",\"account_notificationURL\":\"REPLACE_WITH_VALUE\"} ", ParameterType.RequestBody);
IRestResponse response = client.Execute(request);
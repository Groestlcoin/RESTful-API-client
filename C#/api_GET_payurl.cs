var client = new RestClient("https://merchant.atomicpay.io/api/v1/payurl/REPLACE_WITH_VALUE");
var request = new RestRequest(Method.GET);
request.AddHeader("cache-control", "no-cache");
request.AddHeader("Authorization", "Basic REPLACE_WITH_BASE64_ENCODED_CREDENTIALS");
request.AddHeader("Content-Type", "application/json");
IRestResponse response = client.Execute(request);
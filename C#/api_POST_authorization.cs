var client = new RestClient("https://merchant.atomicpay.io/api/v1/authorization");
var request = new RestRequest(Method.POST);
request.AddHeader("cache-control", "no-cache");
request.AddHeader("Content-Type", "application/json");
request.AddParameter("undefined", "{\"account_id\":\"REPLACE_WITH_VALUE\",\"account_privateKey\":\"REPLACE_WITH_VALUE\",\"account_publicKey\":\"REPLACE_WITH_VALUE\"}", ParameterType.RequestBody);
IRestResponse response = client.Execute(request);
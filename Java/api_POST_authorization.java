OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\"account_id\":\"REPLACE_WITH_VALUE\",\"account_privateKey\":\"REPLACE_WITH_VALUE\",\"account_publicKey\":\"REPLACE_WITH_VALUE\"}");
Request request = new Request.Builder()
  .url("https://merchant.atomicpay.io/api/v1/authorization")
  .post(body)
  .addHeader("Content-Type", "application/json")
  .addHeader("cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
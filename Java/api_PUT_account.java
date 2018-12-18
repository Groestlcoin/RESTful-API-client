OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\"account_name\":\"REPLACE_WITH_VALUE\",\"account_website\":\"REPLACE_WITH_VALUE\",\"account_email\":\"REPLACE_WITH_VALUE\",\"account_currency\":\"REPLACE_WITH_VALUE\",\"account_cryptocurrency\":\"REPLACE_WITH_VALUE\",\"account_transactionSpeed\":\"REPLACE_WITH_VALUE\",\"account_notificationURL\":\"REPLACE_WITH_VALUE\"} ");
Request request = new Request.Builder()
  .url("https://merchant.atomicpay.io/api/v1/account")
  .put(body)
  .addHeader("Content-Type", "application/json")
  .addHeader("Authorization", "Basic REPLACE_WITH_BASE64_ENCODED_CREDENTIALS")
  .addHeader("cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
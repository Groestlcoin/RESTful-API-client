OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\"redirect\":\"REPLACE_WITH_VALUE\",\"order_id\":\"REPLACE_WITH_VALUE\",\"order_price\":\"REPLACE_WITH_VALUE\",
\"order_currency\":\"REPLACE_WITH_VALUE\",\"order_description\":\"REPLACE_WITH_VALUE\",\"transaction_speed\":\"REPLACE_WITH_VALUE\",
\"notification_email\":\"REPLACE_WITH_VALUE\",\"notification_url\":\"REPLACE_WITH_VALUE\",\"redirect_url\":\"REPLACE_WITH_VALUE\"}");
Request request = new Request.Builder()
  .url("https://merchant.atomicpay.io/api/v1/invoices")
  .post(body)
  .addHeader("Content-Type", "application/json")
  .addHeader("Authorization", "Basic REPLACE_WITH_BASE64_ENCODED_CREDENTIALS")
  .addHeader("cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
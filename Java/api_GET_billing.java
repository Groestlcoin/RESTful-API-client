OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://merchant.atomicpay.io/api/v1/billing?status=REPLACE_WITH_VALUE&dateStart=REPLACE_WITH_VALUE&dateEnd=REPLACE_WITH_VALUE")
  .get()
  .addHeader("Content-Type", "application/json")
  .addHeader("Authorization", "Basic REPLACE_WITH_BASE64_ENCODED_CREDENTIALS")
  .addHeader("cache-control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
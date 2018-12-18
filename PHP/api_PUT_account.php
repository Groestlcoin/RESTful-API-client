<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://merchant.atomicpay.io/api/v1/account",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "PUT",
  CURLOPT_POSTFIELDS => "{\"account_name\":\"REPLACE_WITH_VALUE\",\"account_website\":\"REPLACE_WITH_VALUE\",\"account_email\":\"REPLACE_WITH_VALUE\",
  \"account_currency\":\"REPLACE_WITH_VALUE\",\"account_cryptocurrency\":\"REPLACE_WITH_VALUE\",\"account_transactionSpeed\":\"REPLACE_WITH_VALUE\",
  \"account_notificationURL\":\"REPLACE_WITH_VALUE\"} ",
  CURLOPT_HTTPHEADER => array(
    "Authorization: Basic REPLACE_WITH_BASE64_ENCODED_CREDENTIALS",
    "Content-Type: application/json",
    "cache-control: no-cache"
  ),
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "Error:" . $err;
} else {
  echo $response;
}
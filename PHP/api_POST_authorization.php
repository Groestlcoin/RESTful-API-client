<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://merchant.atomicpay.io/api/v1/authorization",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "{\"account_id\":\"REPLACE_WITH_VALUE\",\"account_privateKey\":\"REPLACE_WITH_VALUE\",\"account_publicKey\":\"REPLACE_WITH_VALUE\"}",
  CURLOPT_HTTPHEADER => array(
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
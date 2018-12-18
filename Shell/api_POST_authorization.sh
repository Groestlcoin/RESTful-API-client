curl --request POST \
  --url https://merchant.atomicpay.io/api/v1/authorization \
  --header 'Content-Type: application/json' \
  --header 'cache-control: no-cache' \
  --data '{"account_id":"REPLACE_WITH_VALUE","account_privateKey":"REPLACE_WITH_VALUE","account_publicKey":"REPLACE_WITH_VALUE"}'
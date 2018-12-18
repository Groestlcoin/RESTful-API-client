curl --request PUT \
  --url https://merchant.atomicpay.io/api/v1/account \
  --header 'Authorization: Basic REPLACE_WITH_BASE64_ENCODED_CREDENTIALS' \
  --header 'Content-Type: application/json' \
  --header 'cache-control: no-cache' \
  --data '{"account_name":"REPLACE_WITH_VALUE","account_website":"REPLACE_WITH_VALUE","account_email":"REPLACE_WITH_VALUE","account_currency":"REPLACE_WITH_VALUE","account_cryptocurrency":"REPLACE_WITH_VALUE","account_transactionSpeed":"REPLACE_WITH_VALUE","account_notificationURL":"REPLACE_WITH_VALUE"} '
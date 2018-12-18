curl --request POST \
  --url https://merchant.atomicpay.io/api/v1/payurl \
  --header 'Authorization: Basic REPLACE_WITH_BASE64_ENCODED_CREDENTIALS' \
  --header 'Content-Type: application/json' \
  --header 'cache-control: no-cache' \
  --data '{"url_name":"REPLACE_WITH_VALUE","url_expiry":"REPLACE_WITH_VALUE","order_id":"REPLACE_WITH_VALUE","order_price":"REPLACE_WITH_VALUE",
  "order_currency":"REPLACE_WITH_VALUE","order_description":"REPLACE_WITH_VALUE","transaction_speed":"REPLACE_WITH_VALUE","notification_url":"REPLACE_WITH_VALUE",
  "notification_email":"REPLACE_WITH_VALUE","redirect_url":"REPLACE_WITH_VALUE"} '
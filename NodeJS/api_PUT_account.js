var request = require("request");

var options = { method: 'PUT',
  url: 'https://merchant.atomicpay.io/api/v1/account',
  headers:
   { 'cache-control': 'no-cache',
     Authorization: 'Basic REPLACE_WITH_BASE64_ENCODED_CREDENTIALS',
     'Content-Type': 'application/json' },
  body:
   { account_name: 'REPLACE_WITH_VALUE',
     account_website: 'REPLACE_WITH_VALUE',
     account_email: 'REPLACE_WITH_VALUE',
     account_currency: 'REPLACE_WITH_VALUE',
     account_cryptocurrency: 'REPLACE_WITH_VALUE',
     account_expirationTime: 'REPLACE_WITH_VALUE',
     account_transactionSpeed: 'REPLACE_WITH_VALUE',
     account_notificationURL: 'REPLACE_WITH_VALUE' },
  json: true };

request(options, function (error, response, body) {
  if (error) throw new Error(error);

  console.log(body);
});

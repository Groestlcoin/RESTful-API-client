var request = require("request");

var options = { method: 'GET',
  url: 'https://merchant.atomicpay.io/api/v1/transactions',
  qs:
   { crypto_code: 'REPLACE_WITH_VALUE',
     dateStart: 'REPLACE_WITH_VALUE',
     dateEnd: 'REPLACE_WITH_VALUE' },
  headers:
   { 'cache-control': 'no-cache',
     Authorization: 'Basic REPLACE_WITH_BASE64_ENCODED_CREDENTIALS',
     'Content-Type': 'application/json' } };

request(options, function (error, response, body) {
  if (error) throw new Error(error);

  console.log(body);
});

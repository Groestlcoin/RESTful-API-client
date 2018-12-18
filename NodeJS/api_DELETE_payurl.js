var request = require("request");

var options = { method: 'DELETE',
  url: 'https://merchant.atomicpay.io/api/v1/payurl/REPLACE_WITH_VALUE',
  headers:
   { 'cache-control': 'no-cache',
     Authorization: 'Basic REPLACE_WITH_BASE64_ENCODED_CREDENTIALS',
     'Content-Type': 'application/json' } };

request(options, function (error, response, body) {
  if (error) throw new Error(error);

  console.log(body);
});

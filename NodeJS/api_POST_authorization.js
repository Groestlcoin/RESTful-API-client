var request = require("request");

var options = { method: 'POST',
  url: 'https://merchant.atomicpay.io/api/v1/authorization',
  headers:
   { 'cache-control': 'no-cache',
     'Content-Type': 'application/json' },
  body:
   { account_id: 'REPLACE_WITH_VALUE',
     account_privateKey: 'REPLACE_WITH_VALUE',
     account_publicKey: 'REPLACE_WITH_VALUE' },
  json: true };

request(options, function (error, response, body) {
  if (error) throw new Error(error);

  console.log(body);
});
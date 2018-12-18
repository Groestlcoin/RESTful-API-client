var data = JSON.stringify({
  "account_name": "REPLACE_WITH_VALUE",
  "account_website": "REPLACE_WITH_VALUE",
  "account_email": "REPLACE_WITH_VALUE",
  "account_currency": "REPLACE_WITH_VALUE",
  "account_cryptocurrency": "REPLACE_WITH_VALUE",
  "account_transactionSpeed": "REPLACE_WITH_VALUE",
  "account_notificationURL": "REPLACE_WITH_VALUE"
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("PUT", "https://merchant.atomicpay.io/api/v1/account");
xhr.setRequestHeader("Content-Type", "application/json");
xhr.setRequestHeader("Authorization", "Basic REPLACE_WITH_BASE64_ENCODED_CREDENTIALS");
xhr.setRequestHeader("cache-control", "no-cache");

xhr.send(data);
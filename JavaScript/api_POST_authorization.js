var data = JSON.stringify({
  "account_id": "REPLACE_WITH_VALUE",
  "account_privateKey": "REPLACE_WITH_VALUE",
  "account_publicKey": "REPLACE_WITH_VALUE"
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://merchant.atomicpay.io/api/v1/authorization");
xhr.setRequestHeader("Content-Type", "application/json");
xhr.setRequestHeader("cache-control", "no-cache");

xhr.send(data);
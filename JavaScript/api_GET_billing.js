var data = JSON.stringify(false);

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("GET", "https://merchant.atomicpay.io/api/v1/billing?status=REPLACE_WITH_VALUE&dateStart=REPLACE_WITH_VALUE&dateEnd=REPLACE_WITH_VALUE");
xhr.setRequestHeader("Content-Type", "application/json");
xhr.setRequestHeader("Authorization", "Basic REPLACE_WITH_BASE64_ENCODED_CREDENTIALS");
xhr.setRequestHeader("cache-control", "no-cache");

xhr.send(data);
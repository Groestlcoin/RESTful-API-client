![AtomicPay](https://github.com/atomicpay/RESTful-API-client/blob/master/z_images/atomicpay-api-header.png)
## AtomicPay REST API
AtomicPay provides a standard HTTP RESTful interface which enables application developers to programmatically interact with their account in a powerful, yet secure environment. Using the AtomicPay API, clients can create and manage invoices, retrieve transaction information, access features, retrieve real-time currency rates, manage bills, and much more.

## Getting Started
Developers do not need to install additional libraries or softwares. Developers may call the API directly over HTTPS via protocol methods GET, PUT, POST and DELETE to perform operations, using the language of their choice.

In order to use AtomicPay Restful interace, you will to sign up for an API key. **More information at** https://atomicpay.io/api/en

## Getting Access
Authorization in AtomicPay's API utilizes a set of revocable API Keys. Each API call must be accompanied by an Authorization header that include either a public or private API Key which grants access to perform specific operations.

You can retrieve the API keys by [login to merchant control panel](https://merchant.atomicpay.io/) -> API Integration page. If your key becomes compromised, you may revoke the keys by regenerating new set of keys.

To access any resource URI, an API Key will need to be sent within the HTTP headers Authorization: BASIC {AccountID}:{APIKey} **encoded in base64** over SSL along with the API body request.

## Making Requests
Requests to the AtomicPay REST API follow the RESTful convention using standard HTTP protocols against AtomicPay resources URI to return JSON formatted responses. **IMPORTANT:** (AccountID:APIKey) must be encoded in base64

Except for Authorization endpoint, each request MUST include in the HTTP headers:

- `Authorization: BASIC {AccountID}:{APIKey}`
- `Content-Type: application/json`

To make an API request, simply send an HTTP request with a HTTP method to a resource URI and include in the body JSON parameters of any additional parameters required.

## Resources URI
Below is a list of resources URI endpoints. For more information about specific resource URIs, please visit our [resource documentation](https://atomicpay.io/api/en#resources).

### Authorization
Authorization endpoint URI allows client to validate the authentication of API Keys.

| Method | URI Endpoint |
| ------------- | ------------- |
| POST | https://merchant.atomicpay.io/api/v1/authorization |

For detailed schema, parameters, code snippet and returned responses, read [Authorization Resource Documentation](https://atomicpay.io/api/en#resource-Authorization)

### Account
Account endpoint URI allows client to retrieve or update account details of merchant's AtomicPay account.

| Method | URI Endpoint |
| ------------- | ------------- |
| GET | https://merchant.atomicpay.io/api/v1/account |
| PUT | https://merchant.atomicpay.io/api/v1/account |

For detailed schema, parameters, code snippet and returned responses, read [Account Resource Documentation](https://atomicpay.io/api/en#resource-Account)

### Billing
Billing endpoint URI allows client to retrieve details of a specific bill or a list of bills for the merchant account filtered by query.

| Method | URI Endpoint |
| ------------- | ------------- |
| GET | https://merchant.atomicpay.io/api/v1/billing |
| GET | https://merchant.atomicpay.io/api/v1/billing/:bill_id |

For detailed schema, parameters, code snippet and returned responses, read [Billing Resource Documentation](https://atomicpay.io/api/en#resource-Billing)

### Currencies
Currencies endpoint URI allows client to retrieve fiat currencies that are supported by AtomicPay

| Method | URI Endpoint |
| ------------- | ------------- |
| GET | https://merchant.atomicpay.io/api/v1/currencies |
| GET | https://merchant.atomicpay.io/api/v1/currencies/:currency |

For detailed schema, parameters, code snippet and returned responses, read [Currencies Resource Documentation](https://atomicpay.io/api/en#resource-Currencies)

### Invoices
Invoices are time-sensitive payment requests. An invoice has a fixed price, typically denominated in fiat currency. AtomicPay will automatically convert this fiat amount into cryptocurrency of equivalent value, based on real-time average cryptocurrency market rate, along with an expiration time of 15 minutes.

| Method | URI Endpoint |
| ------------- | ------------- |
| GET | https://merchant.atomicpay.io/api/v1/invoices |
| GET | https://merchant.atomicpay.io/api/v1/invoices/:invoice_id |
| POST | https://merchant.atomicpay.io/api/v1/invoices |

For detailed schema, parameters, code snippet and returned responses, read [Invoices Resource Documentation](https://atomicpay.io/api/en#resource-Invoices)

### PayURL
PayURL endpoint URI allows client to retrieve, create, update and delete PayURLs of merchant account.

| Method | URI Endpoint |
| ------------- | ------------- |
| GET | https://merchant.atomicpay.io/api/v1/payurl |
| GET | https://merchant.atomicpay.io/api/v1/payurl/:url_id |
| POST | https://merchant.atomicpay.io/api/v1/payurl |
| PUT | https://merchant.atomicpay.io/api/v1/payurl/:url_id |
| DELETE | https://merchant.atomicpay.io/api/v1/payurl/:url_id |

For detailed schema, parameters, code snippet and returned responses, read [PayURL Resource Documentation](https://atomicpay.io/api/en#resource-PayURL)

### Rates
Rates endpoint URI allows client to retrieve real-time exchange rates between a base fiat currency and merchant's supported cryptocurrencies.

| Method | URI Endpoint |
| ------------- | ------------- |
| GET | https://merchant.atomicpay.io/api/v1/rates/:base_currency |

For detailed schema, parameters, code snippet and returned responses, read [Rates Resource Documentation](https://atomicpay.io/api/en#resource-Rates)

### Transactions
Transactions endpoint URI allows client to retrieve a list of transactions for the merchant account filtered by query.

| Method | URI Endpoint |
| ------------- | ------------- |
| GET | https://merchant.atomicpay.io/api/v1/transactions |

For detailed schema, parameters, code snippet and returned responses, read [Transactions Resource Documentation](https://atomicpay.io/api/en#resource-Transactions)

## License
AtomicPay is released under the MIT License. Please refer to the LICENSE file that accompanies this project for more information including complete terms and conditions.

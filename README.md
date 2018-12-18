![AtomicPay](https://github.com/atomicpay/RESTful-API-client/blob/master/z_images/atomicpay-api-header.png)
## AtomicPay REST API
AtomicPay provides a standard HTTP RESTful interface which enables application developers to programmatically interact with their account in a powerful, yet secure environment. Using the AtomicPay API, clients can create and manage invoices, retrieve transaction information, access features, retrieve real-time currency rates, manage bills, and much more.

## Getting Started
Developers do not need to install additional libraries or softwares. Developers may call the API directly over HTTPS via protocol methods GET, PUT, POST and DELETE to perform operations, using the language of their choice.

In order to use AtomicPay Restful interace, you will need an API key. Getting a key is free and easy. **More information at** https://atomicpay.io/api/en

## Getting Access
Authorization in AtomicPay's API utilizes a set of revocable API Keys. Each API call must be accompanied by an Authorization header that include either a public or private API Key which grants access to perform specific operations.

To access any resource URI, an API Key will need to be sent within the HTTP headers Authorization: BASIC {AccountID}:{APIKey} **encoded in base64** over SSL along with the API body request. API access require key authentication and you can retrieve the API keys by login to merchant control panel -> API Integration page. If your key becomes compromised, you may revoke the keys by regenerating new set of keys.

## Making Requests
Requests to the AtomicPay REST API follow the RESTful convention using standard HTTP protocols against AtomicPay resources URI to return JSON formatted responses. **IMPORTANT:** (AccountID:APIKey) must be encoded in base64

Except for Authorization endpoint, each request MUST include in the HTTP headers:

- `Authorization: BASIC {AccountID}:{APIKey}`
- `Content-Type: application/json`

To make an API request, simply send an HTTP request with a HTTP method to a resource URI and include in the body JSON parameters of any additional parameters required.

## Resources URI
For more information about specific resource URIs, please visit our [resource documentation](https://atomicpay.io/api/en#resources).

#### Authorization
| POST  | https://merchant.atomicpay.io/api/v1/authorization |
| ------------- | ------------- |

For detailed schema, parameters, code snippet and returned responses, read [Authorization Resource Documentation](https://atomicpay.io/api/en#resource-Authorization)

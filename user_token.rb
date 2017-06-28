require 'bundler/setup'
require 'json'
require 'rest-client'

url = "https://identity.tyo1.conoha.io/v2.0/tokens"
payload = {  "auth": {
    "passwordCredentials": {
      "username": "gncu49472791",
      "password": password
    },
    "tenantId": tenant_id}}

response = RestClient.post(url, payload.to_json)
p JSON.parse response.body

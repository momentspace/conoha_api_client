require 'bundler/setup'
require 'json'
require 'rest-client'

url = "https://identity.tyo1.conoha.io/v2.0/tokens"
payload = {  "auth": {
    "passwordCredentials": {
      "username": "",
      "password": ""
    }}}
response = RestClient.post(url, payload.to_json)
p JSON.parse response.body

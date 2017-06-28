require 'bundler/setup'
require 'json'
require 'rest-client'

url = "https://compute.tyo1.conoha.io/v2/{tenant_id}/servers"
headers = {
	"X-Auth-Token": usertoken,
	"Accept": "application/json"
}

payload = {
	"server": {
		"imageRef": "8c9f7e23-c42e-4eeb-9672-786d80ce84aa",
		"flavorRef": "7eea7469-0d85-4f82-8050-6ae742394681"
	}
}

response = RestClient.post(url, payload.to_json, headers)
p res = JSON.parse(response.body)


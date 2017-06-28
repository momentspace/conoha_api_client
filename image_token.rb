require 'bundler/setup'
require 'json'
require 'rest-client'

url = "https://compute.tyo1.conoha.io/v2/{tenant_id}/images"
headers = {
	"X-Auth-Token": usertoken,
	"Accept": "application/json"
}
response = RestClient.get(url, headers)
res = JSON.parse(response.body)

# res["images"].map do |images|
# 	puts images["name"]
# end

target_image = res["images"].find do |image|
	image["name"] == "vmi-debian-8.7-i386-unified"
end
p target_image

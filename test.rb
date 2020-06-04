require 'net/http'
require 'uri'
require 'json'
require 'pry'


request = {
  "title": "Testing the API",
  "body": "I'm not  having a problem with this.",
  "assignees": [
    "Gavrilajava"
  ],
  "milestone": 1,
  "labels": [
    "test"
  ]
}



uri = URI.parse("https://api.github.com/repos/Gavrilajava/sinatra-ar-crud-lab-houston-web-012720/issues")


header = {'Content-Type': 'text/json'}

# Create the HTTP objects
http = Net::HTTP.new(uri.host, uri.port)
request = Net::HTTP::Post.new(uri.request_uri, header)
request.body = request.to_json

response = http.request(request)

binding.pry

0

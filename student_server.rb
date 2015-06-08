require_relative "./http_response"
require_relative "./http_request"
require_relative "./http_server"

require 'pp'
require 'rack'

request = HttpRequest.new("GET / HTTP/1.1")
server = HTTPRequestProceesor.new
response = server.process_request(request)

pp response.to_a


app = Proc.new do |env|
  response.to_a
end

Rack::Handler::WEBrick.run app

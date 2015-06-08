require_relative "./http_response"
require_relative "./http_request"
require_relative "./http_server"

require 'pp'
require 'rack'

app = Proc.new do |env|
  request = HttpRequest.new(env)
  server = HTTPRequestProceesor.new
  response = server.process_request(request)
  response.to_a
end

Rack::Handler::WEBrick.run app

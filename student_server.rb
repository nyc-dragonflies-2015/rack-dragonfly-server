require_relative "./http_response"
require_relative "./http_request"
require_relative "./http_server"

require 'rack'

app = Proc.new do |env|
  HTTPRequestProceesor.new(HttpRequest.new(env)).process_request
end

Rack::Handler::WEBrick.run app

class HTTPRequestProceesor
  PATHS = {
    '/' => "index.html"
  }

  def initialize(request)
    @request = request
  end

  def get
    if PATHS.keys.include?(path=@request.path)
      contents = File.open(PATHS[path]).readlines
      Http_Response.new(contents).to_a
    else
      error(404, "Not found :(")
    end
  end

  def post
    puts "TODO: Do some POST-y stuff here..."
  end

  def process_request
    error unless @request.method == "GET" || @request.method == "POST"
    send @request.method.downcase.to_sym
  end

  def error(error_number=500, error_message="We messed up on the server" )
    [error_number, { "Content-Type" => 'text/plain' }, Array(error_message)]
  end
end


class HTTPRequestProceesor
  def get(request)
    if request.path == '/'
      contents = File.open("index.html").readlines
      Http_Response.new(contents)
    end
  end

  def post
  end
  
  def error
  end
  
  def receive(request)
    if request.protocol = "HTTP"
      process_request(request)
    end
  end
    
  def process_request(request)
    case request.method
    when "GET"
      get(request)
    when "POST"
      post(request)
    else
      error(request)
    end
  end
end


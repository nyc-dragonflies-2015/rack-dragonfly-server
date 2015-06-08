class HttpRequest 
  def initialize(request_string)
    @data = request_string.split(' ')
  end
  
  def to_h
    {method: verb, request_uri: path, http_version: http_version}
  end

  def verb
    @data[0]
  end

  def path
    @data[1]
  end

  def http_version
    @data[2]
  end

  alias :method :verb
end


class HttpRequest
  def initialize(rack_environment_object)
    @data = rack_environment_object
  end

  def verb
    @data['REQUEST_METHOD']
  end

  def path
    @data['PATH_INFO']
  end

  def http_version
    @data['SERVER_PROTOCOL']
  end

  alias :method :verb
end


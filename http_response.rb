class Http_Response

  attr_reader :version, :status_code, :reason_phrase, :content_type, :body

  def initialize(body, version="HTTP/1.1", headers={"Content-Type" => "text/html"}, status_code=200)
    @version, @headers, @status_code, @body = version, headers, status_code, body
  end

  def to_a
    [@status_code, @headers, @body]
  end
end


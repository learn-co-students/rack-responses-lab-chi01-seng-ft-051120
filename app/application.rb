class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.new
    if time.hour >= 12
      resp.write "Good Afternooon"
    else
      resp.write "Good Morning"
    end
    resp.finish
  end

end

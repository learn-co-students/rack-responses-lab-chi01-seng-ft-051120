class Application

  def call(env)
    resp = Rack::Response.new

    if Time.now.hour > 0 && Time.now.hour < 12
      resp.write "Good Morning,\nThe time is currently:\n#{Time.now.hour}:#{Time.now.min} A.M."
    else 
      resp.write "Good Afternoon,\nThe time is currently:\n#{Time.now.hour}:#{Time.now.min} P.M."
    end
    resp.finish
  end


end
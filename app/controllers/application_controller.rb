class ApplicationController < ActionController::Base
  def hello
    render :hello
  end

  def joke
    uri = URI("https://official-joke-api.appspot.com/random_joke")
    res = Net::HTTP.get_response(uri)
    joke = JSON.parse(res.body)

    render json: joke
  end

end
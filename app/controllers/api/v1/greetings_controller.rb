class Api::V1::GreetingsController < ApplicationController
  def index
    greeting = Greeting.pluck(:greeting).sample

    headers['Access-Control-Allow-Origin'] = '*'
    render json: { message: greeting }
  end
end

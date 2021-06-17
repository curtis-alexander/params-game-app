class ParamsController < ApplicationController
  def show_name
    name = "matthias"
    p name
    render json: name.upcase.as_json
  end

  def high_low
    answer = 36
    guess = 36
    if guess < answer
      message = "too low"
    elsif guess > answer
      message = "too high"
    else
      message = "you got it!"
    end
    render json: { message: message }
  end
end

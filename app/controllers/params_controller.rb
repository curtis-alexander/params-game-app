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

  def segment_test
    username = params[:username]
    password = params[:password]
    render json: { message: "your user name is #{username} and password is #{password}" }
  end

  def user_name
    username = params[:user_name]
    password = params[:password]
    if username == "hugh" && password == "swordfish"
      render json: { message: "Valid credentials." }
    else
      render json: { message: "Invalid credentials" }
    end
  end
end

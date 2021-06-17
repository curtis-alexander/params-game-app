class ParamsController < ApplicationController
  def show_name
    name = "matthias"
    p name
    render json: name.upcase.as_json
  end

  def high_low
    render json: { message: "hello" }
  end
end

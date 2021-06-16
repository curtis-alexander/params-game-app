class ParamsController < ApplicationController
  def show_name
    render json: { message: "hello" }
  end
end

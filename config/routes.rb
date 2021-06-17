Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/params_game", controller: "params", action: "show_name"
  get "/number_guess", controller: "params", action: "high_low"

  post "/user_input", controller: "params", action: "user_name"
end

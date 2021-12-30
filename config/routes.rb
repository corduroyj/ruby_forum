Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "subs#index"

  get "/subs", to: "subs#index"

end

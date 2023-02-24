Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  get "tracks", to: "tracks#index"
  get "contact", to: "contact#index"
  get "home", to: "home#index"
  resources :messages


end

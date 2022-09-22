Rails.application.routes.draw do
  resources :signups
  resources :performers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "performers#index"
end

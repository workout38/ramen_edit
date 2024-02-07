
Rails.application.routes.draw do
resources :restaurants, only: [:index]

  root 'restaurants#index'
  get 'accounts', to: 'home#accounts'

  get "users/index", to: "users#index"
  get "users/:id", to: "users#show"

  get "signup", to: "users#new"
  post "users/create" => "users#create"
end

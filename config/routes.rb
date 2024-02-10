
Rails.application.routes.draw do
resources :restaurants, only: [:index]

  root 'restaurants#index'
  get 'accounts', to: 'home#accounts'

  get "users/index", to: "users#index"
  get "users/:id", to: "users#show"
  get "signup", to: "users#new"
  post "users/create", to: "users#create"
  get "users/:id/edit", to: "users#edit"
  post "users/:id/update" => "users#update"

  get "posts/index", to: "posts#index"
  get "posts/new", to: "posts#new"
  get "posts/:id", to: "posts#show"
  post "posts/create", to: "posts#create"
  get "posts/:id/edit", to: "posts#edit"
  post "posts/:id/update", to: "posts#update"
  delete "posts/:id/destroy", to: "posts#destroy"

  get "login", to: "users#login_form"
  post "login", to: "users#login"
  get "logout", to:  "users#logout"
end

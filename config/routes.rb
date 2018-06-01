Rails.application.routes.draw do
  root "blog#index"
  resources :users, only: [:new, :create]
  resources :blog, only: [:new, :create]
  # get "/blog/new", to: "blog#new"
  # post "/blog/new", to: "blog#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
end

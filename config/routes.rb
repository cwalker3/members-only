Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"

  resources :users, only: [:new, :create]
  resources :posts, only: [:new, :create, :index]
  resources :user
end

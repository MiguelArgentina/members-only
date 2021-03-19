Rails.application.routes.draw do
  get 'posts/new', to: 'posts#new'
  get 'posts/create'
  get 'posts/index'

  root "posts#index"

  devise_for :members
  resources :members
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

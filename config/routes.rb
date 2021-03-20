Rails.application.routes.draw do
  get 'posts/new', to: 'posts#new'
  get 'posts/create'
  get 'posts/index'

  root 'posts#show'

  devise_for :members
  resources :posts, only: [:new, :create, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

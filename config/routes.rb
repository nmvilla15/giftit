Rails.application.routes.draw do
  get 'home/index'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'delete', to: 'users#destroy', as: 'delete'
  get 'search', to: 'posts#search'

  resources :users
  resources :categories
  resources :sessions
  resources :posts

  resources :conversations do
    resources :messages
  end

  root to: "home#index"

  
end

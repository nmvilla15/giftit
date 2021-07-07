Rails.application.routes.draw do
  resources :categories
  root to: "posts#index"
  resources :posts
  
  
end

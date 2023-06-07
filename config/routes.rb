Rails.application.routes.draw do
  get 'login', to: 'user_sessions#new', as: 'login'
  post 'login', to: 'user_sessions#create'
  delete 'login', to: 'user_sessions#destroy', as: 'logout'
  
  resources :users
  resources :posts
end
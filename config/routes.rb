Rails.application.routes.draw do
  get 'user_sessions/new'
  get 'user_sessions/create'
  resources :users
  resources :posts
end
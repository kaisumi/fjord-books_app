Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  devise_for :users
  root to: 'books#index'
  resources :books
  resources :users, only: %i(index show)
  get '/users/:id/follows', to: 'follows#show_followings', as: 'follow_list'
  get '/users/:id/followers', to: 'follows#show_followers', as: 'follower_list'
  post '/users/:id/followers', to: 'follows#create', as: 'follow'
  delete '/users/:user_id/followers/:id', to: 'follows#destroy', as: 'unfollow'
end

Rails.application.routes.draw do
  devise_for :users
  root to: 'tweet_sanas#index'
  resources :tweet_sanas
  resources :user_sanas, only: :show
end

Rails.application.routes.draw do
  root to: 'tweet_sanas#index'
  resources :tweet_sanas
end

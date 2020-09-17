Rails.application.routes.draw do
  resources :tweet_sanas, only: [:index, :new, :create]
end

Rails.application.routes.draw do
  devise_for :user
  root to: 'tweet_sanas#index'
  resources :tweet_sanas do
    resources :comment_sanas, only: :create
    collection do
      get 'search'
    end
  end
  resources :user_sanas, only: :show
end

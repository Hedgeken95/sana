class TweetSanasController < ApplicationController
  before_action :set_tweet, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @tweets = TweetSana.includes(:user)
  end

  def new
    @tweet_sana = TweetSana.new
  end

  def create
    TweetSana.create(tweet_params)
  end  

  def destroy
    tweet = TweetSana.find(params[:id])
    tweet.destroy
  end

  def edit
  end

  def update
    tweet = TweetSana.find(params[:id])
    tweet.update(tweet_params)
  end

  def show
  end

  private
  def tweet_params
    params.require(:tweet_sana).permit(:image, :text).merge(user_id: current_user.id)
  end

  def set_tweet
    @tweet_sana = TweetSana.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
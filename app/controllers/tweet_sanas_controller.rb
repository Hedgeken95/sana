class TweetSanasController < ApplicationController
  before_action :set_tweet, only: [:edit, :show]

  def index
    @tweets = TweetSana.all
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
    params.require(:tweet_sana).permit(:name, :image, :text)
  end

  def set_tweet
    @tweet_sana = TweetSana.find(params[:id])
  end
end
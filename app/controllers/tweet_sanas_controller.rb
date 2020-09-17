class TweetSanasController < ApplicationController
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
    @tweet_sana = TweetSana.find(params[:id])
  end

  def update
    tweet = TweetSana.find(params[:id])
    tweet.update(tweet_params)
  end

  def show
    @tweet = TweetSana.find(params[:id])
  end

  private
  def tweet_params
    params.require(:tweet_sana).permit(:name, :image, :text)
  end
end
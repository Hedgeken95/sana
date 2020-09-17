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

  private
  def tweet_params
    params.require(:tweet_sana).permit(:name, :image, :text)
  end
end
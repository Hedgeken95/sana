class TweetSanasController < ApplicationController
  def index
    @tweets = Tweetsana.all
end

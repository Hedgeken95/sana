class CommentSanasController < ApplicationController
  def create
    comment = CommentSana.create(comment_params)
    redirect_to "/tweet_sanas/#{comment.tweet_sana.id}"
  end

  private
  def comment_params
    params.require(:comment_sana).permit(:text).merge(user_id: current_user.id, tweet_sana_id: params[:tweet_sana_id])
  end
end

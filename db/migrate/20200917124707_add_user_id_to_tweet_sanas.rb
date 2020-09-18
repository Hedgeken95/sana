class AddUserIdToTweetSanas < ActiveRecord::Migration[6.0]
  def change
    add_column :tweet_sanas, :user_id, :integer
  end
end

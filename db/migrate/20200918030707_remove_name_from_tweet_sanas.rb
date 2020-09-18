class RemoveNameFromTweetSanas < ActiveRecord::Migration[6.0]
  def change
    remove_column :tweet_sanas, :name, :string
  end
end

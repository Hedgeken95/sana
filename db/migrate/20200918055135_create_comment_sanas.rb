class CreateCommentSanas < ActiveRecord::Migration[6.0]
  def change
    create_table :comment_sanas do |t|
      t.integer :user_id
      t.integer :tweet_sana_id
      t.text :text
      t.timestamps
    end
  end
end

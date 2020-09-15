class CreateTweetsanas < ActiveRecord::Migration[6.0]
  def change
    create_table :tweetsanas do |t|
      t.string :name
      t.string :text
      t.text :image
      t.timestamps
    end
  end
end

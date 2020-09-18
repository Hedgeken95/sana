class CommentSana < ApplicationRecord
  belongs_to :tweet_sana
  belongs_to :user
end

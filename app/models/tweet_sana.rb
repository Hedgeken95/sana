class TweetSana < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
  has_many :comment_sanas

  def self.search(search)
    if search != ""
      TweetSana.where('text LIKE(?)', "%#{search}%")
    else
      TweetSana.all
    end
  end
end

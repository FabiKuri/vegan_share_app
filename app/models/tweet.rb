class Tweet < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to_active_hash :prefecture

  has_one_attached :image

  validates :shop_name, :content, :genre_id, :plan_base_menu,
  :prefecture_id, :food_menu, presence: true

  belongs_to :user
  has_many :comments

  def self.search(search)
    if search != ""
      Tweet.where('shop_name LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end
end

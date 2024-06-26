class Post < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  mount_uploader :image, ImageUploader

  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
end

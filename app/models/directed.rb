class Directed < ApplicationRecord
  has_many :users

  validates :text, presence: true, unless: :image?
  mount_uploader :image, ImageUploader
end

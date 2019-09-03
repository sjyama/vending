class Drink < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  # validates :image, presence: true
  mount_uploader :image, ImageUploader
end

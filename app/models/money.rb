class Money < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  has_many :deposits
end

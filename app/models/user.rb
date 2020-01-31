class User < ApplicationRecord
  has_many :post
  validates :name, presence: true, uniqueness: true, length: { maximum: 50 }
end

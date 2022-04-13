class User < ApplicationRecord
  has_many :posts

  validates :name, uniqueness: true, length: { in: 2..16 }, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true
end

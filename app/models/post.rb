class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { in: 4..64 }
  validates :content, presence: true
  validates :user_id, presence: true
end

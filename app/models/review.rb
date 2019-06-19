class Review < ApplicationRecord
  belongs_to :car
  belongs_to :user
  validates :content, presence: true, length: { minimum: 20 }
  validates :rating, presence: true
end

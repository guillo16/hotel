class Review < ApplicationRecord
  belongs_to :car
  belongs_to :user
  validates :content, presence: true, lenght: { minimun: 20 }
  validates :rating, presence: true
end

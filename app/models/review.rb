class Review < ApplicationRecord
  belongs_to :user
  belongs_to :player

  validates :review, presence: true
end

class Review < ApplicationRecord
  belongs_to :user
  belongs_to :player

  validates :review, null: false
end

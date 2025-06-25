class Player < ApplicationRecord
  has_many :reviews, dependent: :destroy
  belongs_to :club

  validates :name, :position, :nationary, :date_of_birth, presence: true
end

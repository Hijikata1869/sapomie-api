class Club < ApplicationRecord
  has_many :players
  belongs_to :league

  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end

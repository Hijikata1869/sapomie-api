class Club < ApplicationRecord
  has_many :players
  belongs_to :league

  validates :name, null: false
  validates :name, uniqueness: { case_sensitive: false }
end

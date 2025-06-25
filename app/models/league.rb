class League < ApplicationRecord
  has_many :clubs

  validates :name, null: false
  validates :name, uniqueness: { case_sensitive: false }
end

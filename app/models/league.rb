class League < ApplicationRecord
  has_many :clubs

  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end

class User < ApplicationRecord
  has_secure_password

  has_many :reviews, dependent: :destroy

  validates :nickname, :email, :password_digest, presence: true
  validates :self_introduction, length: { maximum: 255 }
  validates :email, uniqueness: { case_sensitive: false }
end

class User < ApplicationRecord
  has_secure_password
  has_many :secrets
  has_many :likes, dependent: :destroy
  has_many :secrets_liked, through: :likes, source: :secret

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :name, :email, :password, presence: true
  validates :name, length: {minimum: 2}, format: {with: /\A[a-zA-Z]+\z/}
  validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
end

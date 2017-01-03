class User < ApplicationRecord
  has_secure_password

  has_many :bright_ideas, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_ideas, through: :likes, source: :bright_idea

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
    validates :name, :alias, :email, presence: true
    validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
    validates :name, :alias, length: {minimum: 2}, format: {with: /\A([a-z]|\s)+\z/i}
    validates :password, length: {minimum: 6}, presence: true, confirmation: true, on: :create
end

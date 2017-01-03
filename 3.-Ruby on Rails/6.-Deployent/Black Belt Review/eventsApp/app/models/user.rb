class User < ApplicationRecord
    has_secure_password
    has_many :events, dependent: :destroy
    has_many :participants, dependent: :destroy
    has_many :events_participating, through: :participants, source: :event
    has_many :comments, dependent: :destroy

    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
    validates :first_name, :last_name, :email, :city, :state, presence: true
    validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
    validates :first_name, :last_name, length: {minimum: 2}, format: {with: /\A[a-zA-Z]+\z/}
    validates :password, length: {minimum: 6}, presence: true, confirmation: true, on: :create
end

class User < ApplicationRecord
    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

    has_secure_password
    has_many :messages
    has_many :comments

    validates :first_name, :last_name, :email, :password, presence: true
    validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
    validates :first_name, :last_name, length: {minimum: 2}, format: {with: /\A[a-zA-Z]+\z/}
    validates :password, length: {minimum: 6}

    def full_name
        self.first_name + " " + self.last_name
    end
end

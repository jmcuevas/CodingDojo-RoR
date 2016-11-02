class User < ActiveRecord::Base
    has_many :owners
    has_many :blogs,  through: :owners
    has_many :posts, dependent: :destroy
    has_many :messages, dependent: :destroy

    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
    validates :first_name, :last_name, :email_address, presence: true
    validates :email_address, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
    validates :first_name, :last_name, length: {minimum: 3}
end

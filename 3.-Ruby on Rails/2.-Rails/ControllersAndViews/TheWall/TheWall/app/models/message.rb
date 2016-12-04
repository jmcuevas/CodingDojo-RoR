class Message < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :message, length: {minimum: 5}
end

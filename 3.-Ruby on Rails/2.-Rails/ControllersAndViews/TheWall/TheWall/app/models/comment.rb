class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :message

  validates :comment, length: {minimum: 5}
end

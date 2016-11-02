class Owner < ActiveRecord::Base
  belongs_to :user
  belongs_to :blog

  # Each blog can only be owned by 1 user.
  validates :blog_id, uniqueness: true
end

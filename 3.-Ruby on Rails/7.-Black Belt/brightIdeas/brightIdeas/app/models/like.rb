class Like < ApplicationRecord
  belongs_to :user
  belongs_to :bright_idea

  validates_uniqueness_of :bright_idea_id, scope: :user_id
end

class BrightIdea < ApplicationRecord
    belongs_to :user
    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user

    validates :content, presence: true
    validates :content, length: {minimum: 5}

    scope :order_by_likes, -> {
        left_outer_joins(:likes).select("bright_ideas.*, count(likes.id) AS likes_count").group("bright_ideas.id").order("likes_count DESC")
    }
end

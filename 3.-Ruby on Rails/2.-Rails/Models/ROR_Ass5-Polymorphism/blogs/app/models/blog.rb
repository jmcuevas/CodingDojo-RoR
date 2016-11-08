class Blog < ActiveRecord::Base
    has_many :posts, dependent: :destroy
    has_one :owner
    has_one :user, through: :owners
    has_many :comments, as: :commentable

    validates :name, :description, presence: true


end

class Blog < ActiveRecord::Base
    has_many :posts, dependent: :destroy
    has_one :owner
    has_one :user, through: :owners


    validates :name, :description, presence: true


end

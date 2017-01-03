class Event < ApplicationRecord
  belongs_to :user
  has_many :participants, dependent: :destroy
  has_many :users_participating, through: :participants, source: :user
  has_many :comments

  validates :name, :date, :city, :state, :user_id, presence: true
end

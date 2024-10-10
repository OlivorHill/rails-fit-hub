class WorkoutSession < ApplicationRecord
  belongs_to :workout
  has_one :user, through: :workout #is it necessary? or is it more confusing?
  has_many :bookings
  has_many :users, through: :bookings
  validates :date, presence: true
end

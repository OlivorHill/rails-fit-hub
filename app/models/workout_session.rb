class WorkoutSession < ApplicationRecord
  belongs_to :workout
  has_many :users, through: :bookings
  has_one :users, through: :workout
  has_many :bookings
  validates :date, presence: true
end

class Booking < ApplicationRecord
  belongs_to :workout
  belongs_to :user
  has_one :review

  validates :user_id, :workout_id, presence: true
  validates :user_id, uniqueness: { scope: :workout_id, message: "You already booked this workout" }
end

class Booking < ApplicationRecord
  belongs_to :workout_session
  belongs_to :user
  has_one :workout, through: :workout_session
  has_one :review

  validates :user_id, :workout_session_id, presence: true
  validates :user_id, uniqueness: { scope: :workout_session_id, message: "You already booked this workout" }
end

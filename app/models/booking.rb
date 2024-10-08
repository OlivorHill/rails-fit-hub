class Booking < ApplicationRecord
  belongs_to :workout
  belongs_to :user

  validates :user_id, :workout_id, presence: true
end

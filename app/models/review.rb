class Review < ApplicationRecord
  validates :comment, presence: true, length: { minmum: 10, allow_blank: false }
  validates :rating, presence: true, inclusion: { in: 1..5, message: "should be between 1 and 5" }

  belongs_to :user
  belongs_to :workout
  # belongs_to :workout, through: :bookings
end

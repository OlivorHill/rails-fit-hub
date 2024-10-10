class Workout < ApplicationRecord
  validates :name, presence: true, length: { minmum: 6, allow_blank: false }
  validates :description, presence: true, length: { minmum: 10, allow_blank: false }
  validates :room, :duration, :image_url, presence: true

  belongs_to :user
  has_many :workout_sessions, dependent: :destroy
  has_many :bookings, through: :workout_sessions
  has_many :reviews
end

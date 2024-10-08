class Workout < ApplicationRecord
  validates :name, presence: true, length: { minmum: 6, allow_blank: false }
  validates :description, presence: true, length: { minmum: 10, allow_blank: false }
  validates :room, :duration, presence: true

  has_many :bookings
  has_many :users, through: :bookings
  has_many :reviews, through: :bookings
end

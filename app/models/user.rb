class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :age, presence: true
  validates :username, presence: true, uniqueness: true, length: { minmum: 6, allow_blank: false }
  # Not sure if we would need to add validations for the email address and password? Does the 'Devise' handle this?

  has_many :bookings
  has_many :reviews
  has_many :workouts, through: :bookings
end

class BookingsController < ApplicationController
  def create
    Booking.create(workout_id: params[:workout_id], user_id: current_user.id)
  end
end

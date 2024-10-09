class BookingsController < ApplicationController
  def create
    Booking.create(workout_id: params[:workout_id], user_id: current_user.id)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @Booking.destroy
    redirect_to accounts_path
  end
end

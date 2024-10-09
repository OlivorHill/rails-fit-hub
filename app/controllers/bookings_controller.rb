class BookingsController < ApplicationController
  def create
    @booking = Booking.new(workout_id: params[:workout_id], user_id: current_user.id)
    return unless @booking.save

    redirect_to workout_path(params[:workout_id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to accounts_path
  end
end

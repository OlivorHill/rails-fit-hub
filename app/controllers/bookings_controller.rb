class BookingsController < ApplicationController
  def create
    @workout_session = WorkoutSession.find(params[:workout_session_id])
    @booking = current_user.bookings.build(workout_session: @workout_session)
    @booking.save
    redirect_to workout_path(@workout_session.workout)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to accounts_path
  end
end

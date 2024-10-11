class WorkoutsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find(params[:id])
    @sessions = @workout.workout_sessions.sort_by{|session| session.date }
    @booking = Booking.new
    # @booked = current_user.bookings.where(workout_session_id: params[:id])
  end
end

class WorkoutsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find(params[:id])
    @booking = Booking.new
  end
end

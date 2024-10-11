class WorkoutsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find(params[:id])
    @sessions = @workout.workout_sessions
    @booking = Booking.new
    # @booked = current_user.bookings.where(workout_session_id: params[:id])
  end
end

def create
  @workout = Workout.new(without_params)
  if @workout.save
    redirect_to @workout, notice: 'Workout was successfully created'
  else
    render :new
  end
end

def edit
  @workout = Workout.find(params[:id])
end

def update
  @workout = Workout.find(params[:id])
  if @workout.update(workout_params)
    redirect_to @workout, notice: 'Workout was successfully updated'
  else
    render :edit
  end
end

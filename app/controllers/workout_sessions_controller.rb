class WorkoutSessionsController < ApplicationController
  def new
    @workouts = current_user.workouts
    @session = WorkoutSession.new
  end

  def create
    WorkoutSession.create(workout_session_params)
  end

  def workout_session_params
    params.require(:workout_session).permit(:date, :workout_id)
 end
end

class RemoveDurationFromWorkout < ActiveRecord::Migration[7.2]
  def change
    remove_column :workouts, :duration, :interval
  end
end

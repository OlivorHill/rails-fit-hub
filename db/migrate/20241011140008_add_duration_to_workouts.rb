class AddDurationToWorkouts < ActiveRecord::Migration[7.2]
  def change
    add_column :workouts, :duration, :integer
  end
end

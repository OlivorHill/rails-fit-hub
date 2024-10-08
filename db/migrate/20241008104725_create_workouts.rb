class CreateWorkouts < ActiveRecord::Migration[7.2]
  def change
    create_table :workouts do |t|
      t.string :name
      t.text :description
      t.interval :duration
      t.string :room

      t.timestamps
    end
  end
end

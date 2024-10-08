class AddImageUrlToWorkouts < ActiveRecord::Migration[7.2]
  def change
    add_column :workouts, :image_url, :text
  end
end

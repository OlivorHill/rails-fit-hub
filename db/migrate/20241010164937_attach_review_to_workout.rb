class AttachReviewToWorkout < ActiveRecord::Migration[7.2]
  def up
    Review.destroy_all
    add_reference :reviews, :workout, null: false, foreign_key: true
    remove_reference :reviews, :booking, null: false, foreign_key: true
  end

  def down
    remove_reference :reviews, :workout, null: false, foreign_key: true
    add_reference :reviews, :booking, null: false, foreign_key: true
  end
end

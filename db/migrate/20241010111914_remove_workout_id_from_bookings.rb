class RemoveWorkoutIdFromBookings < ActiveRecord::Migration[7.2]
  def change
    remove_reference :bookings, :workout, null: false, foreign_key: true
  end
end

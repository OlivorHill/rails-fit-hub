class AddWorkoutSessionIdToBookings < ActiveRecord::Migration[7.2]
  def change
    add_reference :bookings, :workout_session, null: false, foreign_key: true
  end
end

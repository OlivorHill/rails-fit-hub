# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Creating workouts..."
Workout.destroy_all

Workout.create!(
  name: "Morning Yoga",
  description: "A relaxing yoga session to start your day.",
  duration: 60,
  room: "Yoga room"
)

Workout.create!(
  name: "HIIT Training",
  description: "High-intensity interval training for a full-body workout.",
  duration: 45,
  room: "Gym room"
)

Workout.create!(
  name: "Strength Training",
  description: "A strength-building workout focusing on weightlifting.",
  duration: 90,
  room: "Weight room"
)

Workout.create!(
  name: "Pilates",
  description: "A low-impact workout that emphasizes core strength, flexibility, and alignment.",
  duration: 55,
  room: "Studio A"
)

Workout.create!(
  name: "CrossFit",
  description: "A challenging workout incorporating functional movements, weightlifting, and metabolic conditioning.",
  duration: 60,
  room: "Functional Fitness Room"
)

Workout.create!(
  name: "Boxing",
  description: "A boxing class focused on technique, footwork, and high-energy drills for both strength and cardio.",
  duration: 60,
  room: "Boxing Gym"
)

Workout.create!(
  name: "Zumba",
  description: "A fun and energetic dance-based workout combining Latin and international music for a cardio-intensive session.",
  duration: 50,
  room: "Dance Studio"
)

Workout.create!(
  name: "Bodyweight Circuit",
  description: "A full-body workout using only bodyweight exercises like push-ups, squats, and burpees. Ideal for improving strength and endurance.",
  duration: 40,
  room: "Studio B"
)

Workout.create!(
  name: "Aqua Aerobics",
  description: "A low-impact workout performed in water, great for joint health and cardio fitness.",
  duration: 45,
  room: "Pool"
)

puts "#{Workout.all.count} workouts created"

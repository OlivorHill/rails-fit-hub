# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "DELETING EVERYTHING..."
  Review.destroy_all
  Booking.destroy_all
  WorkoutSession.destroy_all
  Workout.destroy_all
  User.destroy_all
puts "Creating wokrout creators.."
  # creating 5 users who create workouts
  require 'faker'
  image_url = ['https://img.freepik.com/free-psd/3d-render-avatar-character_23-2150611765.jpg', 'https://img.freepik.com/free-psd/3d-render-avatar-character_23-2150611725.jpg', 'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671126.jpg' ]
  5.times do
    new_user = Faker::Internet.user;
    User.create!(email: new_user[:email],
      username: new_user[:username],
      password: '123456',
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      age: rand(18..80),
      profile_picture_url: image_url.sample
    )
  end

puts "creating workouts"
    # creating 5 workouts created by sample of previous users
  Workout.create!(
    name: "Morning Yoga",
    description: "A relaxing yoga session to start your day.",
    duration: 60,
    room: "Yoga room",
    image_url: "https://images.pexels.com/photos/1051838/pexels-photo-1051838.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    user_id: User.all.sample.id
  )

  Workout.create!(
    name: "HIIT Training",
    description: "High-intensity interval training for a full-body workout.",
    duration: 45,
    room: "Gym room",
    image_url: "https://images.pexels.com/photos/4720796/pexels-photo-4720796.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    user_id: User.all.sample.id
    )

  Workout.create!(
    name: "Strength Training",
    description: "A strength-building workout focusing on weightlifting.",
    duration: 90,
    room: "Weight room",
    image_url: "https://images.pexels.com/photos/841128/pexels-photo-841128.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    user_id: User.all.sample.id,
  )

  Workout.create!(
    name: "Pilates",
    description: "A low-impact workout that emphasizes core strength, flexibility, and alignment.",
    duration: 55,
    room: "Studio A",
    image_url: "https://plus.unsplash.com/premium_photo-1661720873706-b5a2cfcae765?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    user_id: User.all.sample.id
  )

  Workout.create!(
    name: "CrossFit",
    description: "A challenging workout incorporating functional movements, weightlifting, and metabolic conditioning.",
    duration: 60,
    room: "Functional Fitness Room",
    image_url: "https://b2171211.smushcdn.com/2171211/wp-content/uploads/2022/07/CrossFit.jpg?size=1080x675&lossy=1&strip=1&webp=1",
    user_id: User.all.sample.id
  )

  puts "#{Workout.all.count} workouts created"

puts "Creating 10 sessions happended in past"
  10.times do
    WorkoutSession.create(
      workout_id: Workout.all.sample.id,
      date: Date.today + rand(-7..1)
    )
  end

puts "creating users who act as gym members"
  image_url = ['https://img.freepik.com/free-photo/smiling-businessman-face-portrait-wearing-suit_53876-148135.jpg', 'https://img.freepik.com/free-photo/portrait-beautiful-redhead-lady_23-2148339146.jpg', 'https://img.freepik.com/free-photo/man-glasses-checked-shirt-smiling-with-happy-face-standing-orange-wall_141793-60809.jpg', 'https://img.freepik.com/free-psd/3d-render-avatar-character_23-2150611765.jpg', 'https://img.freepik.com/free-psd/3d-render-avatar-character_23-2150611725.jpg', 'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671126.jpg' ]
  members = []
  10.times do
    new_user = Faker::Internet.user;
    member = User.create!(email: new_user[:email],
      username: new_user[:username],
      password: '123456',
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      age: rand(18..60),
      profile_picture_url: image_url.sample
    )
    members << member
  end

puts "created members"

puts "creating bookings and reviews"
  comments = [
    "Great workout! Really pushed my limits today.",
    "Felt strong and energized throughout the session.",
    "This workout was tough, but it’s exactly what I needed.",
    "Not my best performance today, but I’ll come back stronger.",
    "Loved the variety in today’s workout routine!",
    "Challenging exercises, but I can already feel the improvement.",
    "Struggled with the last set, but glad I finished.",
    "Feeling sore, but in a good way!",
    "The workout was well-paced and motivating.",
    "I need to work on my form, but overall it was a great session."
  ]
  15.times do
    booking = Booking.create(workout_session_id: WorkoutSession.all.sample.id,
        user_id: members.sample.id)
    Review.create!(
        comment: comments.sample,
        rating: rand(4..5),
        workout_id: booking.workout.id,
        user_id: members.sample.id
        )
  end

  2.times do
  Booking.create(workout_session_id: WorkoutSession.all.sample.id,
        user_id: User.last.id)
  end

puts "creating new workout sessions!"
  10.times do
    WorkoutSession.create(
      workout_id: Workout.all.sample.id,
      date: Date.today + rand(0..7)
    )
  end

puts 'Use me for testing or demo'
puts User.last.email

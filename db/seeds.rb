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
Review.destroy_all
Booking.destroy_all
User.destroy_all
Workout.destroy_all

Workout.create!(
  name: "Morning Yoga",
  description: "A relaxing yoga session to start your day.",
  duration: 60,
  room: "Yoga room",
  image_url: "https://images.pexels.com/photos/1051838/pexels-photo-1051838.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
)

Workout.create!(
  name: "HIIT Training",
  description: "High-intensity interval training for a full-body workout.",
  duration: 45,
  room: "Gym room",
  image_url: "https://images.pexels.com/photos/4720796/pexels-photo-4720796.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
)

Workout.create!(
  name: "Strength Training",
  description: "A strength-building workout focusing on weightlifting.",
  duration: 90,
  room: "Weight room",
  image_url: "https://images.pexels.com/photos/841128/pexels-photo-841128.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
)

Workout.create!(
  name: "Pilates",
  description: "A low-impact workout that emphasizes core strength, flexibility, and alignment.",
  duration: 55,
  room: "Studio A",
  image_url: "https://plus.unsplash.com/premium_photo-1661720873706-b5a2cfcae765?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

Workout.create!(
  name: "CrossFit",
  description: "A challenging workout incorporating functional movements, weightlifting, and metabolic conditioning.",
  duration: 60,
  room: "Functional Fitness Room",
  image_url: "https://b2171211.smushcdn.com/2171211/wp-content/uploads/2022/07/CrossFit.jpg?size=1080x675&lossy=1&strip=1&webp=1"
)

Workout.create!(
  name: "Boxing",
  description: "A boxing class focused on technique, footwork, and high-energy drills for both strength and cardio.",
  duration: 60,
  room: "Boxing Gym",
  image_url: "https://12roundsboxing.co.uk/wp-content/uploads/2023/04/ARC_5990-3.jpg"
)

Workout.create!(
  name: "Zumba",
  description: "A fun and energetic dance-based workout combining Latin and international music for a cardio-intensive session.",
  duration: 50,
  room: "Dance Studio",
  image_url: "https://www.fit19.com/hs-fs/hubfs/GallerySliderImages-804x526px-01.png?width=804&name=GallerySliderImages-804x526px-01.png"
)

Workout.create!(
  name: "Bodyweight Circuit",
  description: "A full-body workout using only bodyweight exercises like push-ups, squats, and burpees. Ideal for improving strength and endurance.",
  duration: 40,
  room: "Studio B",
  image_url: "https://cdn.media.amplience.net/i/thegymgroup/The_Gym_Group-Generic-Members_Performing_Assorted_Exercises?fmt=auto&h=545&w=1440&sm=c&qlt=default&$qlt$&$poi$"
)

Workout.create!(
  name: "Aqua Aerobics",
  description: "A low-impact workout performed in water, great for joint health and cardio fitness.",
  duration: 45,
  room: "Pool",
  image_url: "https://bethesdahealth.org/wp-content/uploads/2017/07/BthdBarclay_2292wb-900x733.jpg"
)

puts "#{Workout.all.count} workouts created"

puts "creating users...."

require 'faker'
image_url = ['https://img.freepik.com/free-psd/3d-render-avatar-character_23-2150611765.jpg', 'https://img.freepik.com/free-psd/3d-render-avatar-character_23-2150611725.jpg', 'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671126.jpg' ]
5.times do
  puts "creating users...."
  new_user = Faker::Internet.user;
  p new_user
  new = User.create!(email: new_user[:email],
    username: new_user[:username],
    password: '123456',
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: rand(18..80),
    profile_picture_url: image_url.sample
  )
  puts "1 user created...."

  booking = Booking.create!(workout_id: Workout.all.sample.id,
    user_id: new.id)
  puts "1 booking created...."

  Review.create!(
    comment: Faker::Lorem.sentence,
    rating: rand(1..5),
    booking_id: booking.id,
    user_id: new.id
  )
  puts "1 review created..."
end

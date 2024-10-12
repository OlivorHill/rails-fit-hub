FitHub
FitHub is a web application developed as part of a project during my Web Development Bootcamp at LeWagon. Over the course of one week, my team and I (consisting of three other classmates) collaborated to build this hypothetical gym management platform. The site enables gym members to book sessions and allows gym instructors to create and manage their workouts and schedules.

Features
During the one-week sprint, we were able to implement the following user stories:

* View All Workouts: Users can browse through the list of all available workouts.
* View Single Workout: Users can view detailed information on individual workouts, including session schedules and reviews.
* Create Workouts and Schedules: Instructors can create their own workout routines and session schedules.
* Booking Management: Users can view all of their bookings in one place.
* Book or Cancel Sessions: Users can book or cancel their workout session bookings.
* Workout Reviews: After attending a workout session, users can leave reviews.

Technologies
Languages: Ruby on Rails, HTML, SCSS
Tools and Platforms: Heroku (for deployment), GitHub (for version control)
Key Gems:
bootstrap: For responsive UI design
simple_form: For easy form handling
font-awesome-sass: For icons
sassc-rails: For SCSS compilation

Bits that I enjoyd working on the most:
* Creating data model validation and assosiation. Seeing tables can call on one and other is so satifying!
* Seed file for development database to make sure we can test the functionalities of the app at any time

I've forked the repo from our project and now this will be my practise field to test and learn more features I want to include:
* Users can upload an image for their profile and workout
* Users can sign up as member, instructor or both
* Users can search for a specific workout in the search bar
* Users can filter workout sessions today, this weekend or next week
* Responsive screen: make sure the webpage is capatible to a phone screen size.
* Improve new session and new review form experience: either a pop up window or a toggled JS form instead of a new page.
* Workout session: include capacity in the model so that when a session reaches to its max capacity, users can no longer book in.
* Authorisation and Pundit: ensure backend restriction are aligned with the front end.

Note:
Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.

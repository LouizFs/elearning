require 'faker'

user = User.create!(email: 'admin@example.com', password:'admin@example.com', password_confirmation: 'admin@example.com')

30.times do
  Course.create({
    title: Faker::Educator.course_name,
    description: Faker::TvShows::SouthPark.quote,
    user: user
  })
end

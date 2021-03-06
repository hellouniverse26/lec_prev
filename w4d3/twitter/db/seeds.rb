# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Location.destroy_all
User.destroy_all
Tweet.destroy_all


locations = Location.create!([
  { name: 'Argentina' }, { name: 'Massachusetts' }, { name: 'California' },
  { name: 'Pittsburgh' }, { name: 'New Jersey' }, { name: 'Florida' },
  { name: 'Connecticut' }, { name: 'New York' }, { name: 'Mars' }
  ])

users = User.create!([
  { name: 'Alex', location_id: locations[5], password: "rogueone" }, { name: 'Maurice', location_id: locations[4], password: "rogueone" },
  { name: 'Mike', location_id: locations[4], password: "rogueone" }, { name: 'Tommy', location_id: locations[0], password: "rogueone" },
  { name: 'Oscar', location_id: locations[8], password: "rogueone" }, { name: 'Meagan', location_id: locations[2], password: "rogueone" },
  { name: 'Patrick', location_id: locations[2], password: "rogueone" },
  { name: 'Danny', location_id: locations[7], password: "rogueone" }, { name: 'Tassos', location_id: locations[6], password: "rogueone" },
  { name: 'Ali', location_id: locations[3], password: "rogueone" }
])

User.all.each do |user|
  user.tweets.create!(body: "My name is #{user.name}")
  user.tweets.create!(body: "Breaktime, everybody!")
  user.tweets.create!(body: "You can do it!")
  user.tweets.create!(body: "Please put spaces before and after the '+'. Thanks.")
end

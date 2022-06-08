# require "open-uri"

puts "cleaning database..."
Greenspace.destroy_all
# User.destroy_all
# puts "creating users"

# User.new(email: "dave@gmail.com", password: "123456")

puts "creating greenspaces"
greenspace1 = Greenspace.create(
  location: "Shoreditch",
  description: "Clean and quiet green space",
  photo: 'park1.jpg',
  average_rating: 4.5,
  name: "Shoreditch Park"
)

puts "created #{greenspace1.name}!!!"

greenspace2 = Greenspace.create(
  location: "Hoxton",
  description: "Nice park",
  photo: 'park1.jpg',
  average_rating: 4,
  name: "Hoxton Park"
)

puts "created #{greenspace2.name}!!!"

greenspace3 = Greenspace.create(
  location: "Haggerston",
  description: "quiet green space",
  photo: 'park1.jpg',
  average_rating: 3.5,
  name: "Haggerston Park"
)

puts "created #{greenspace3.name}!!!"

greenspace4 = Greenspace.create(
  location: "Haggerston",
  description: "quiet green space",
  photo: 'park1.jpg',
  average_rating: 3.5,
  name: "Haggerston Park"
)

puts "created #{greenspace4.name}!!!"

require "open-uri"

puts "cleaning database..."
Greenspace.destroy_all
Walk.destroy_all
# User.destroy_all
# puts "creating users"

# User.new(email: "dave@gmail.com", password: "123456")

puts "creating greenspaces"
greenspace1 = Greenspace.create(
  address: "5 Hoxton Square, London N1 6NU",
  description: "Clean and quiet green space",
  average_rating: 4.5,
  name: "Shoreditch Park"
)

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1654788098/greenspace1b_rubiad.jpg")
greenspace1.photo.attach(io: file, filename: "Shoreditchpark1.jpg", content_type: "image/jpg")
greenspace1.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1654788093/greenspace1a_kdiwyq.jpg")
greenspace1.photo.attach(io: file, filename: "Shoreditchpark2.jpg", content_type: "image/jpg")
greenspace1.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1654788093/greenspace1c_ziwnii.jpg")
greenspace1.photo.attach(io: file, filename: "Shoreditchpark3.jpg", content_type: "image/jpg")
greenspace1.save

puts "created #{greenspace1.name}!!!"

greenspace2 = Greenspace.create(
  location: "Hoxton",
  description: "Nice park few, too many dogs",
  photo: 'park5_landscape.jpg',
  average_rating: 3,
  name: "Hoxton Park"
)

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1654788098/greenspace1b_rubiad.jpg")
greenspace2.photo.attach(io: file, filename: "HoxtonPark1.jpg", content_type: "image/jpg")
greenspace2.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1654788093/greenspace2a_kdiwyq.jpg")
greenspace2.photo.attach(io: file, filename: "HoxtonPark2.jpg", content_type: "image/jpg")
greenspace2.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1654788093/greenspace2c_ziwnii.jpg")
greenspace2.photo.attach(io: file, filename: "HoxtonPark3.jpg", content_type: "image/jpg")
greenspace2.save

puts "created #{greenspace2.name}!!!"

greenspace3 = Greenspace.create(
  location: "Haggerston",
  description: "very peaceful and serene space",
  photo: 'park6_landscape.jpg',
  average_rating: 5,
  name: "Haggerston Park"
)

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1654788098/greenspace1b_rubiad.jpg")
greenspace3.photo.attach(io: file, filename: "Haggerston1.jpg", content_type: "image/jpg")
greenspace3.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1654788093/greenspace3a_kdiwyq.jpg")
greenspace3.photo.attach(io: file, filename: "Haggerston2.jpg", content_type: "image/jpg")
greenspace3.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1654788093/greenspace3c_ziwnii.jpg")
greenspace3.photo.attach(io: file, filename: "Haggerston3.jpg", content_type: "image/jpg")
greenspace3.save

puts "created #{greenspace3.name}!!!"

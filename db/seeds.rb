require "open-uri"

puts "cleaning database..."
Walk.destroy_all
Greenspace.destroy_all
# User.destroy_all
# puts "creating users"

# User.new(email: "dave@gmail.com", password: "123456")

puts "creating greenspaces"
greenspace1 = Greenspace.new(
  address: "5 Hoxton Square, London N1 6NU",
  description: "Clean and quiet green space",
  average_rating: 4.5,
  name: "Shoreditch Park"
)

file1 = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1654788098/greenspace1b_rubiad.jpg")
greenspace1.photos.attach(io: file1, filename: "Shoreditchpark1.jpg", content_type: "image/jpg")
greenspace1.save

file2 = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1654788093/greenspace1a_kdiwyq.jpg")
greenspace1.photos.attach(io: file2, filename: "Shoreditchpark2.jpg", content_type: "image/jpg")
greenspace1.save

file3 = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1654788093/greenspace1c_ziwnii.jpg")
greenspace1.photos.attach(io: file3, filename: "Shoreditchpark3.jpg", content_type: "image/jpg")
greenspace1.save

puts "created #{greenspace1.name}!!!"

greenspace2 = Greenspace.new(
  address: "Hoxton",
  description: "Nice park few, too many dogs",
  average_rating: 3,
  name: "Hoxton Park"
)
file1.rewind
greenspace2.photos.attach(io: file1, filename: "Shoreditchpark1.jpg", content_type: "image/jpg")
greenspace2.save!

file2.rewind
greenspace2.photos.attach(io: file2, filename: "HoxtonPark2.jpg", content_type: "image/jpg")
greenspace2.save

file3.rewind
greenspace2.photos.attach(io: file3, filename: "HoxtonPark3.jpg", content_type: "image/jpg")
greenspace2.save

puts "created #{greenspace2.name}!!!"

greenspace3 = Greenspace.new(
  address: "Haggerston",
  description: "very peaceful and serene space",
  average_rating: 5,
  name: "Haggerston Park"
)

file1.rewind

greenspace3.photos.attach(io: file1, filename: "Haggerston1.jpg", content_type: "image/jpg")
greenspace3.save

file2.rewind

greenspace3.photos.attach(io: file2, filename: "Haggerston2.jpg", content_type: "image/jpg")
greenspace3.save

file3.rewind

greenspace3.photos.attach(io: file3, filename: "Haggerston3.jpg", content_type: "image/jpg")
greenspace3.save

puts "created #{greenspace3.name}!!!"

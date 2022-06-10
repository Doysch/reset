require "open-uri"

puts "cleaning database..."
Walk.destroy_all
Greenspace.destroy_all
# User.destroy_all
# puts "creating users"

# User.new(email: "dave@gmail.com", password: "123456")

puts "creating greenspaces"
greenspace1 = Greenspace.create!(
  address: "5 Hoxton Square, London N1 6NU",
  description: "Clean and quiet green space",
  average_rating: 4.5,
  name: "Shoreditch Park"
)

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1654786206/vosqyuq9jd0ve892czxh.jpg")
greenspace1.photos.attach(io: file, filename: "Shoreditchpark1.jpg", content_type: "image/jpg")
greenspace1.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1654788093/greenspace1c_ziwnii.jpg")
greenspace1.photos.attach(io: file, filename: "Shoreditchpark2.jpg", content_type: "image/jpg")
greenspace1.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1654788093/greenspace1a_kdiwyq.jpg")
greenspace1.photos.attach(io: file, filename: "Shoreditchpark3.jpg", content_type: "image/jpg")
greenspace1.save

puts "created #{greenspace1.name}!!!"

greenspace2 = Greenspace.create!(
  address: "66 Old Nichol Street, London E2 7HP",
  description: "Nice park few, too many dogs",
  average_rating: 3,
  name: "Hoxton Park"
)

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1654788098/greenspace1b_rubiad.jpg")
greenspace2.photos.attach(io: file, filename: "Shoreditchpark1.jpg", content_type: "image/jpg")
greenspace2.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1654788133/greenspace2b_t41qny.jpg")
greenspace2.photos.attach(io: file, filename: "HoxtonPark2.jpg", content_type: "image/jpg")
greenspace2.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1654788133/greenspace2c_nln336.jpg")
greenspace2.photos.attach(io: file, filename: "HoxtonPark3.jpg", content_type: "image/jpg")
greenspace2.save

puts "created #{greenspace2.name}!!!"

greenspace3 = Greenspace.create!(
  address: "18 Queensbridge Rd, London E2 8NS",
  description: "very peaceful and serene space",
  average_rating: 5,
  name: "Haggerston Park"
)

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1654788136/greenspace2a_aqy0bl.jpg")
greenspace3.photos.attach(io: file, filename: "Haggerston1.jpg", content_type: "image/jpg")
greenspace3.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1654792516/thomas-le-fQZaLU1mudM-unsplash_syjjpu.jpg")
greenspace3.photos.attach(io: file, filename: "Haggerston2.jpg", content_type: "image/jpg")
greenspace3.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1654792557/amy-tran-HafDeUhr_T4-unsplash_zdnjbi.jpg")
greenspace3.photos.attach(io: file, filename: "Haggerston3.jpg", content_type: "image/jpg")
greenspace3.save

puts "created #{greenspace3.name}!!!"

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


greenspace4 = Greenspace.create!(
  address: "30-31, Victoria Park, Lark Row, London E2 9JA",
  description: "huge place with lots of paths and a lake. Can get busy in the summer",
  average_rating: 4,
  name: "Victoria Park"
)

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655065136/Victoria_Park11_ewljgv.jpg")
greenspace4.photos.attach(io: file, filename: "Victoria1.jpg", content_type: "image/jpg")
greenspace4.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655065133/victoria-park-london-1549885053.53.2560x1440_cf9efa.jpg")
greenspace4.photos.attach(io: file, filename: "Victoria2.jpg", content_type: "image/jpg")
greenspace4.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655065132/36494-victoria-park-tower-hamlets-tower-hamlets-01_vxhvw0.jpg")
greenspace4.photos.attach(io: file, filename: "Victoria3.jpg", content_type: "image/jpg")
greenspace4.save

puts "created #{greenspace4.name}!!!"


greenspace5 = Greenspace.create!(
  address: "Smart St, Bethnal Green, London E2 0SN",
  description: "Well kept green area and well away from the road ",
  average_rating: 4,
  name: "Meath Gardens"
)

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655065713/12dff8_59d0fc7ed631428c98823b6db516c4ce_mv2_mi9d2q.jpg")
greenspace5.photos.attach(io: file, filename: "Meath1.jpg", content_type: "image/jpg")
greenspace5.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655065713/7759933520_1236f32c10_b_ebpytl.jpg")
greenspace5.photos.attach(io: file, filename: "Meath2.jpg", content_type: "image/jpg")
greenspace5.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655065713/Meath_Gardens_h8jani.png")
greenspace5.photos.attach(io: file, filename: "Meath3.jpg", content_type: "image/jpg")
greenspace5.save

puts "created #{greenspace5.name}!!!"


greenspace6 = Greenspace.create!(
  address: "Vallance Rd, London E2 6HD",
  description: "Open fields and woodland walks. Tends to be busy with regular sports games being played ",
  average_rating: 3,
  name: "Weavers Field"
)

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655066181/3cd00d92-d2cb-45a1-a0b3-862a18f50ffb_ybyyns.jpg")
greenspace6.photos.attach(io: file, filename: "Weavers1.jpg", content_type: "image/jpg")
greenspace6.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655066181/weavers-fields_rdb4k0.jpg")
greenspace6.photos.attach(io: file, filename: "Weavers2.jpg", content_type: "image/jpg")
greenspace6.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655066180/weavers-fields_1_oie8g3.jpg")
greenspace6.photos.attach(io: file, filename: "Weavers3.jpg", content_type: "image/jpg")
greenspace6.save

puts "created #{greenspace6.name}!!!"

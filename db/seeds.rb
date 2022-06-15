require "open-uri"

puts "cleaning database..."
Walk.destroy_all
Greenspace.destroy_all
User.destroy_all
Walk.destroy_all
Review.destroy_all

# ------------USERS---------------------#

puts "creating users"

user1 = User.create!(email: "dave@gmail.com", password: "123456", username: "Davey-boy", photo: "https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655310629/dave_szer7b.jpg")
user2 = User.create!(email: "pilar@gmail.com", password: "123456", username: "PSanchez", photo: "https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655310629/Pilar_srbjl9.jpg")
user3 = User.create!(email: "rich@gmail.com", password: "123456", username: "Rrrrich", photo: "https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655310629/rich_ob5dd1.jpg")
user4 = User.create!(email: "rob@gmail.com", password: "123456", username: "Robsta", photo: "https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655310629/Rob_ja9tci.jpg")

puts "Users created!"

# ------------GREENSPACES---------------------#

puts "creating greenspaces"
greenspace1 = Greenspace.create!(
  address: "5 Hoxton Square, London N1 6NU",
  description: "is one of Hackney's largest parks at 7.1 hectares. It is well used and holds a Green Flag award - given annually to the best parks in the country.",
  average_rating: 4.5,
  name: "Shoreditch Park"
)

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655098571/Shoreditch-Park_irycmi.webp")
greenspace1.photos.attach(io: file, filename: "Shoreditchpark1.jpg", content_type: "image/jpg")
greenspace1.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655098572/Boulder-and-Hoxton-Press-towers_deegay.jpg")
greenspace1.photos.attach(io: file, filename: "Shoreditchpark2.jpg", content_type: "image/jpg")
greenspace1.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655098570/dscn2831_tsauzy.jpg")
greenspace1.photos.attach(io: file, filename: "Shoreditchpark3.jpg", content_type: "image/jpg")
greenspace1.save

puts "created #{greenspace1.name}!!!"

greenspace2 = Greenspace.create!(
  address: "66 Old Nichol Street, London E2 7HP",
  description: "is a traditional London garden square in Shoreditch's fashionable cultural quarter. The square is a much appreciated green space for residents, workers and visitors alike in a densely urbanised area.",
  average_rating: 3,
  name: "Hoxton Square"
)

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655098810/thomas-le-fQZaLU1mudM-unsplash_lwiwj1.jpg")
greenspace2.photos.attach(io: file, filename: "Shoreditchpark1.jpg", content_type: "image/jpg")
greenspace2.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655098815/i-do-nothing-but-love-vqP7v7CPWMk-unsplash_dr1xfv.jpg")
greenspace2.photos.attach(io: file, filename: "HoxtonPark2.jpg", content_type: "image/jpg")
greenspace2.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655098957/rs_w_1280_f2mgs3.jpg")
greenspace2.photos.attach(io: file, filename: "HoxtonPark3.jpg", content_type: "image/jpg")
greenspace2.save

puts "created #{greenspace2.name}!!!"

greenspace3 = Greenspace.create!(
  address: "18 Queensbridge Rd, London E2 8NS",
  description: "contains a small but luxuriant nature reserve and is very popular with dog walkers, families and the occasional hipster. Next to it is a woodland walkway and it backs onto Hackney City Farm.",
  average_rating: 5,
  name: "Haggerston Park"
)

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655101509/haggerston-park_itxsox.jpg")
greenspace3.photos.attach(io: file, filename: "Haggerston1.jpg", content_type: "image/jpg")
greenspace3.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655101510/Haggerston_Park_-_panoramio_spmvpe.jpg")
greenspace3.photos.attach(io: file, filename: "Haggerston2.jpg", content_type: "image/jpg")
greenspace3.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655101509/2373196547_1aef5215a9_b_k7bwzs.jpg")
greenspace3.photos.attach(io: file, filename: "Haggerston3.jpg", content_type: "image/jpg")
greenspace3.save

puts "created #{greenspace3.name}!!!"


greenspace4 = Greenspace.create!(
  address: "362 Old Ford Rd, London E9 7DE",
  description: "is the largest park in Tower Hamlets and one of London's most visited green spaces with approximately 9m visitors every year.The park spans 86.18 hectares of open space.",
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
  description: "is a jewel of a park that is still one of London's best kept secrets. Set back from Roman Road, it is often overlooked for better known green spaces in East London. ",
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
  description: "is the largest open space in the west of the borough. It is very popular with families and has a wide range of facilities and lots of routes for walking. ",
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


greenspace7 = Greenspace.create!(
  address: "7c Rhoda St, London E2 7EF",
  description: "is one of Hackney's smaller parks, but is well used and holds a Green Flag award - given annually to the best parks in the country.",
  average_rating: 3,
  name: "East Shoreditch Park "
)

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655099371/dscn2823_gkx4l1.jpg")
greenspace7.photos.attach(io: file, filename: "EastShoreditch1.jpg", content_type: "image/jpg")
greenspace7.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655099371/hoxton-press-07-sm_ifnby4.jpg")
greenspace7.photos.attach(io: file, filename: "EastShoreditch2.jpg", content_type: "image/jpg")
greenspace7.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655098815/i-do-nothing-but-love-vqP7v7CPWMk-unsplash_dr1xfv.jpg")
greenspace7.photos.attach(io: file, filename: "EastShoreditch3.jpg", content_type: "image/jpg")
greenspace7.save

puts "created #{greenspace7.name}!!!"


greenspace8 = Greenspace.create!(
  address: "Buxton St, London E1 5AR",
  description: "is a city farm in the London Borough of Tower Hamlets, a short distance from Brick Lane. The farm is 1.3-acres and is well kept",
  average_rating: 3,
  name: "Spitalfields City Farm "
)

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655099848/20180905204121-2f938673-me_lyfse7.jpg")
greenspace8.photos.attach(io: file, filename: "EastShoreditch1.jpg", content_type: "image/jpg")
greenspace8.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655099848/image_oitfqy.jpg")
greenspace8.photos.attach(io: file, filename: "EastShoreditch2.jpg", content_type: "image/jpg")
greenspace8.save

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1655099848/Farm-from-Shop_fi3wfr.jpg")
greenspace8.photos.attach(io: file, filename: "EastShoreditch3.jpg", content_type: "image/jpg")
greenspace8.save

puts "created #{greenspace8.name}!!!"

# ------------WALKS--------------------#

puts "creating walks"

walk1 = Walk.create!(
  user_id: user1.id,
  greenspace_id: greenspace1.id,
  music: "music",
  notes: "Pretty sressed at work. Felt better after the walk",
  stress_level_before: 9,
  stress_level_after: 6,
  starting_location: "138 Kingsland Rd, London E2 8DY",
  latitude: 51.53116,
  longitude: -0.07682,
  updated_at: Date.new(2022, 6, 13)
)
  # updated_at: Mon, 13 June 2022

puts "created walk1 #{walk1}!"

walk2 = Walk.create!(
  user_id: user1.id,
  greenspace_id: greenspace2.id,
  music: "music",
  notes: "Feeling down",
  stress_level_before: 7,
  stress_level_after: 5,
  starting_location: "Purcell St, London N1 6RD",
  latitude: 51.53292,
  longitude: 0.08186,
  updated_at: Date.new(2022, 6, 14)

)

puts "created walk2 #{walk2}!"

walk3 = Walk.create!(
  user_id: user1.id,
  greenspace_id: greenspace1.id,
  music: "meditation",
  notes: "Feeling worse but had a really nice walk. The sun was shining and helped",
  stress_level_before: 9,
  stress_level_after: 5,
  starting_location: "Purcell St, London N1 6RD",
  latitude: 51.53292,
  longitude: 0.08186,
  updated_at: Date.new(2022, 6, 15)

)

puts "created walk3 #{walk3}!"

walk4 = Walk.create!(
  user_id: user1.id,
  greenspace_id: greenspace2.id,
  music: "music",
  notes: "Feeling down again. walk help a little but still low.",
  stress_level_before: 8,
  stress_level_after: 7,
  starting_location: "Purcell St, London N1 6RD",
  latitude: 51.53292,
  longitude: 0.08186,
  updated_at: Date.new(2022, 6, 15)

)

puts "created walk4 #{walk4}!"

walk5 = Walk.create!(
  user_id: user1.id,
  greenspace_id: greenspace2.id,
  music: "meditation",
  notes: "Feeling down but the weekend is here now",
  stress_level_before: 7,
  stress_level_after: 5,
  starting_location: "Purcell St, London N1 6RD",
  latitude: 51.53292,
  longitude: 0.08186,
  updated_at: Date.new(2022, 6, 17)

)

puts "created walk5 #{walk5}!"


# --------------REVIEWS-----------------#

review1 = Review.create!(
  user_id: user1.id,
  greenspace_id: greenspace1.id,
  rating: 4,
  content: "What a great walk. Made me feel a whole lot better"
)

puts "created review1 #{review1}!"

review2 = Review.create!(
  user_id: user2.id,
  greenspace_id: greenspace1.id,
  rating: 5,
  content: "This was so peaceful.It really reset my day and managed to be very productive afterwards"
)

puts "created review2 #{review2}!"

review3 = Review.create!(
  user_id: user2.id,
  greenspace_id: greenspace1.id,
  rating: 2,
  content: "It was quite busy and difficult to be mindful on this walk. There were quite a few dogs too. "
)

puts "created review3 #{review3}!"

review4 = Review.create!(
  user_id: user3.id,
  greenspace_id: greenspace2.id,
  rating: 4,
  content: "The walk was serene. So great to be in a greenspace"
)

puts "created review4 #{review4}!"

review5 = Review.create!(
  user_id: user4.id,
  greenspace_id: greenspace2.id,
  rating: 4,
  content: "There are many paths to choose from and it really did make my day!"
)

puts "created review5 #{review5}!"

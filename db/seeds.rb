# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

PREFECTURES = [
  'Hokkaidō',
  'Aomori',
  'Iwate',
  'Miyagi',
  'Akita',
  'Yamagata',
  'Fukushima',
  'Ibaraki',
  'Tochigi',
  'Gunma',
  'Saitama',
  'Chiba',
  'Tōkyō',
  'Kanagawa',
  'Niigata',
  'Toyama',
  'Ishikawa',
  'Fukui',
  'Yamanashi',
  'Nagano',
  'Gifu',
  'Shizuoka',
  'Aichi',
  'Mie',
  'Shiga',
  'Kyōto',
  'Ōsaka',
  'Hyōgo',
  'Nara',
  'Wakayama',
  'Tottori',
  'Shimane',
  'Okayama',
  'Hiroshima',
  'Yamaguchi',
  'Shikoku',
  'Tokushima',
  'Kagawa',
  'Ehime',
  'Kōchi',
  'Fukuoka',
  'Saga',
  'Nagasaki',
  'Kumamoto',
  'Ōita',
  'Miyazaki',
  'Kagoshima',
  'Okinawa'
]

puts "Destroying existing records of Users, Listings, Reviews and Bookings..."
Listing.destroy_all
User.destroy_all
puts "Done deletion"

puts "Creating 8 new Users..."

User.create!(nickname: "sarahR", email: "sarah@email.com", password: "123456")
User.create(nickname: "tanao", email: "tanner@email.com", password: "123456")
User.create(nickname: "dani", email: "danielle@email.com", password: "123456")
User.create(nickname: "eevie", email: "yvonne@email.com", password: "123456")
User.create(nickname: "ryansss", email: "ryan@email.com", password: "123456")
User.create(nickname: "yann", email: "yann@email.com", password: "123456")
User.create(nickname: "noemi", email: "noemi@email.com", password: "123456")
User.create(nickname: "raj", email: "raj@email.com", password: "123456")

# 20.times do
#   file = URI.open("https://contents.oricon.co.jp/photo/img/4000/4243/detail/img660/1534140350557.jpg")

#   mascot = Listing.new({
#     mascot_name: Faker::Creature::Animal.name,
#     title: "Lorem ipsum",
#     description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
#     location: PREFECTURES.sample,
#     hourly_rate: (15..150).to_a.sample,
#     user: User.all.sample
#   })

#   mascot.photo.attach(io: file, filename: "chiitan.jpg", content_type: "image/jpg")
#   mascot.save
# end

kumamon = {
  file: "https://res.cloudinary.com/df7gbyhfx/image/upload/v1675341948/spyzh3gzyexl8xti3pet.jpg",
  mascot_name: "Kumamon",
  title: "Cute Black Bear Friend",
  description: "Kumamon (くまモン) is a mascot created by the government of Kumamoto Prefecture, Japan. It was created in 2010 for a campaign created to draw tourists to Kumamoto",
  location: "Kumamoto"
}

funassyi = {
  file: "https://res.cloudinary.com/df7gbyhfx/image/upload/v1675341873/qwjerqdkqqzuuu6xiwdo.jpg",
  mascot_name: "Funassyi",
  title: "Chiba's Unofficial Character",
  description: "Funassyi is a fictional Japanese mascot character, unofficially representing the city of Funabashi, Chiba. It was created by a citizen of Funabashi.",
  location: "Funabashi, Chiba"
}

sorajiro = {
  file: "https://res.cloudinary.com/df7gbyhfx/image/upload/v1675342040/uxjvosua6kezkvazmnbh.jpg",
  mascot_name: "Sorajiro",
  title: "We All Love Sorajiro",
  description: "Sorajiro, one of Japan's most beloved heroes for children, has featured on the live weather report on Nippon TV's daily news show “news every.” since 2007.",
  location: "Shimbashi, Tokyo"
}

peririn = {
  file: "https://res.cloudinary.com/df7gbyhfx/image/upload/v1675342014/ya8l4iljbtlts7uogp7j.jpg",
  mascot_name: "Peririn",
  title: "Be complete",
  description: "Peririn and Ogurin are much loved as the image characters of the Yokosuka Kaikoku Festival, and were created by cartoonist and direct descendent of Oguri.",
  location: "Yokosuka, Kanagawa"
}

domokun = {
  file: "https://res.cloudinary.com/df7gbyhfx/image/upload/v1675341852/y8difadghgrnfdbzo2gt.jpg",
  mascot_name: "Domo-kun",
  title: "DOMO DOMO DOMO",
  description: "Domo (どーも くん, Dōmo-kun) is the official mascot of Japan's public broadcaster NHK, appearing in several 30-second stop-motion interstitial sketches.",
  location: "Shibuya, Tokyo"
}
chiitan = {
  file: "https://res.cloudinary.com/df7gbyhfx/image/upload/v1675341839/immg7r2o22pke6sehmiu.jpg",
  mascot_name: "Chiitan",
  title: "Otterly Adorable",
  description: "Chiitan is a Japanese mascot which was formerly a self-declared unofficial representative of the small port city of Susaki. It is a self-described 0-year-old fairy baby otter with no gender that wears a turtle as a hat.",
  location: "Susaki, Kōchi"
}

mikyan = {
  file: "https://res.cloudinary.com/df7gbyhfx/image/upload/v1675341986/ex1enihinlqdkfecvysr.jpg",
  mascot_name: "Mikyan",
  title: "Dog fused with an orange",
  description: "Mikyan is the official mascot of Ehime Prefecture. He combines the motifs of a mikan orange and a dog. Mikan oranges are a local speciality of Ehime.",
  location: "Ehime, Shikoku"
}

barysan = {
  file: "https://res.cloudinary.com/df7gbyhfx/image/upload/v1675341822/rouaz9tn4sukxe3het5n.jpg",
  mascot_name: "Barysan",
  title: "The Competition",
  description: "Barysan is the yurukyara from Imabari city in Ehime Prefecture. In 2011, he was the runner-up in Japan's Yurukyara Grand Prix and won first place in 2012.",
  location: "Ehime, Shikoku"
}

hakogeo = {
  file: "https://res.cloudinary.com/df7gbyhfx/image/upload/v1675341892/rf2wejb15ucnfhxeuvub.jpg",
  mascot_name: "Hakogeo",
  title: "Let's Soak!",
  description: "Hakogeo, the mascot of Hakone Geopark. Cute, bubbly, and always dressed inappropriately",
  location: "Hakone, Kanagawa"
}

kaparu = {
  file: "https://res.cloudinary.com/df7gbyhfx/image/upload/v1675341929/f3izyumj19lygstpm9do.jpg",
  mascot_name: "Kaparu",
  title: "Goblin of Deep Shame",
  description: "KAPPA comes from a folk tale of SHIKI-city, which is told to live in the rivers and its head dish always needs wet! Enjoy KAPARU's dance and music!",
  location: "Saitama"
}

swingy = {
  file: "https://res.cloudinary.com/df7gbyhfx/image/upload/v1675342062/ulriu0iyle6s1gr4bvuc.jpg",
  mascot_name: "Swingy",
  title: "Born and raised in Daisanbashi",
  description: "He is a jazz player and an entertainer with a service spirit. He likes events and even fly to small gatherings on the street corner. The sound of the saxophone may be echoed on the roof of the twilight Daishin Bridge. If you feel like it, come and look for it.",
  location: "Naka, Yokohama"
}

nazo = {
  file: "https://res.cloudinary.com/df7gbyhfx/image/upload/v1675341995/wovp9r6homi2eti7lhmw.jpg",
  mascot_name: "Nazo-no-sakana",
  title: "Mysterious",
  description: "Nazo No Sakana, the Chiba Marines' mascot, first gained fame by vomiting out his own skeleton.",
  location: "Chiba"
}

peko = {
  file: "https://res.cloudinary.com/df7gbyhfx/image/upload/v1675342005/qwkkyvqhzaajzijlcrqb.jpg",
  mascot_name: "Pekochan",
  title: "Peron peron",
  description: "Fujiya's mascot is Peko-chan, a girl in pigtails licking her lips. Peko-chan is a well-known marketing icon in Japan, where life-sized dolls of the mascot are commonly seen nationwide standing outside the chain's stores.",
  location: "Yokohama"
}

sanomaru = {
  file: "https://res.cloudinary.com/df7gbyhfx/image/upload/v1675342027/rkj0wobplki58032erqv.jpg",
  mascot_name: "Sanomaru",
  title: "Available to eat",
  description: "Sanomaru is a samurai mascot to promote his local town, Sano-city in Tochigi. He wears symbols of famous local foods ramen noodle bowl and imo-furai",
  location: "Sano, Tochigi"
}

sorayan = {
  file: "https://res.cloudinary.com/df7gbyhfx/image/upload/v1675342051/hfrgkexj32egcd8qjq2g.jpg",
  mascot_name: "Sorayan",
  title: "We can fly together",
  description: "Sorayan from Osaka's Itami Airport. Designed to look like an airplane, Sorayan has a round white body and speaks with a unique Kansai accent.",
  location: "Osaka"
}

kanpachiro = {
  file: "https://res.cloudinary.com/df7gbyhfx/image/upload/v1675341911/qqk7w1ybuv4bqinuof75.jpg",
  mascot_name: "Kanpachiro",
  title: "Here for business",
  description: "Kanpachiro is the dancing fish-headed businessman mascot of Kanoya City in Kagoshima Prefecture. The fish that serves as his head is the specialty product of Kanoya City.",
  location: "Kanoya, Kagoshima"
}

# mascot = {
#   file:
#   mascot_name:
#   title:
#   description:
#   location:
# }

puts "Follow by creating 16 new Listings..."

mascots = [kumamon, funassyi, sorajiro, peririn, domokun, chiitan, mikyan, barysan, hakogeo, kaparu, swingy, nazo, peko, sanomaru, sorayan, kanpachiro]

def create_listing(mascot)
  file = URI.open(mascot[:file])

  new_mascot = Listing.new({
    mascot_name: mascot[:mascot_name],
    title: mascot[:title],
    description: mascot[:description],
    location: mascot[:location],
    hourly_rate: (50..150).to_a.sample,
    user: User.all.sample
  })

  new_mascot.photo.attach(io: file, filename: "#{mascot[:mascot_name]}.jpg", content_type: "image/jpg")
  new_mascot.save
end

mascots.each_with_index do |mascot, index|
  create_listing(mascot)
  puts "Created #{index + 1} mascot#{index.zero? ? '' : 's'}"
end

puts "Next, creating 40 new Bookings..."

BOOKING_COMMENTS = [
  "I want the mascot to sing and dance please.",
  "",
  "No special request",
  "My kids are afraid of ballons, please do not bring ballons.",
  "It's a special occasion, so I booked you an hour in advance for preparation and briefing",
  "Don't be late thanks",
  "It's a themed event, do you have special costume for your mascot?",
  "N/A",
  "Thanks, looking forward to see you at the event!",
  "Would like to have the mascot to make an entrance with a dance"
]

users = User.all
listings = Listing.all
events = %i[Birthday Proposal Wedding Funeral Other]

40.times do
  new_book = Booking.new
  new_book.user = users.sample
  new_book.comment = BOOKING_COMMENTS.sample
  new_book.listing = (listings - Listing.where(user: new_book.user)).sample
  new_book.event_type = events.sample
  new_book.event_address = PREFECTURES.sample
  new_book.start_time = Faker::Date.in_date_period(month: 2)
  new_book.end_time = new_book.start_time
  new_book.status = rand(0..3)
  new_book.save
end

puts "Finally, creating 30 new Reviews..."

REVIEW_COMMENTS = [
  "Characatch is the best site for mascots! ^w^",
  "Thank you for showing up at our event",
  "Your mascot is really cute, thanks",
  "Best mascot in town! :) Definitely wanna come back for next event!",
  "Well done, thanks!",
  "Thank you",
  "Nice",
  "Thanks",
  "Love this mascot and how he's so interactive around the kids! All the kids loved him!!",
  "Overall is good. Wish he could have dance though",
  "No issue",
  "Thank you very much!"
]

30.times do
  user = User.all.sample
  user = User.all.sample until user.bookings.any?
  booking = user.bookings.sample
  Review.create!({
    user: user,
    listing: booking.listing,
    content: REVIEW_COMMENTS.sample,
    rating: rand(3..5)
  })
end
puts "Done"

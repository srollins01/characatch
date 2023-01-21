# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

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

puts "Destroying existing records of Users and Listings"
User.destroy_all
Listing.destroy_all
puts "Done deletion"

puts "Creating new records of Users and Listings"
User.create!(nickname: "sarahR", email: "sarah@email.com", password: "123456")
User.create(nickname: "tanao", email: "tanner@email.com", password: "123456")
User.create(nickname: "dani", email: "danielle@email.com", password: "123456")
User.create(nickname: "eevie", email: "yvonne@email.com", password: "123456")
User.create(nickname: "ryansss", email: "ryan@email.com", password: "123456")
User.create(nickname: "yann", email: "yann@email.com", password: "123456")
User.create(nickname: "noemi", email: "noemi@email.com", password: "123456")
User.create(nickname: "raj", email: "raj@email.com", password: "123456")

20.times do
  Listing.create!({
    mascot_name: Faker::Creature::Animal.name,
    title: "Lorem ipsum",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    location: PREFECTURES.sample,
    hourly_rate: (15..150).to_a.sample,
    user: User.all.sample
  })
end
puts "Done"

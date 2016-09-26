# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


20.times do 
	name = Faker::Company.catch_phrase
	uname = Faker::Internet.user_name
	country = Faker::Address.country
	city = Faker::Address.city
	content = Faker::Lorem.paragraph
	points = Faker::Number.between(1,900)
	Entry.create(name: name, username: uname, country: country, city: city, content: content, points: points)
end
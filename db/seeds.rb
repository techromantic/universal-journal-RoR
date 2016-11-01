# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


	5.times do 
		email = Faker::Internet.email
		uname = Faker::Internet.user_name
		password = Faker::Internet.password(6, 8)
		country = Faker::Address.country
		city = Faker::Address.city
	User.create(username: uname, email: email, password: password, country: country, city: city  )

    
    20.times do 
		title = Faker::Company.catch_phrase
		content = Faker::Lorem.paragraph
		points = Faker::Number.between(1,400)
		usernum = Faker::Number.between(1,6)
		country = Faker::Address.country
		city = Faker::Address.city
	Entry.create(user_id: usernum, name: title, content: content, country: country, city: city, points: points)
	end

end

	
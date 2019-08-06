# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
User.destroy_all
City.destroy_all
Gossip.destroy_all
Tag.destroy_all
PrivateMessage.destroy_all

u = []
c = []
g = []
t = []
i = 0
 10.times do 
 	
 	u << User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Superhero.descriptor, email: Faker::Internet.email)
 		
 	c << City.create(name: Faker::Address.city ,zip_code: Faker::Address.zip_code) 
 end
 u.each do |uu|
 	uu.city = c.shuffle[0]
 	uu.save
 end
#Creation gossip & tag(sur pusieur gossip)

20.times do
	g << Gossip.create(title: Faker::Book.title , contetnt: Faker::Books::Lovecraft.sentences(number: 3), user: u.shuffle[0] )
	puts i += 1*1000
end
10.times do
	t << Tag.create(title: Faker::Book.title, gossips: [g.shuffle[0],g.shuffle[1]])
puts "ok"
end

g.each do |gg|
	gg.tags = [t.shuffle[0],t.shuffle[3]]
	puts "okay"
end

pm = PrivateMessage.create(content: Faker::Books::Dune.saying, sender: u[0], recipient: u[2])
puts "okayokay"
#
# 10.times do
# 	TagGossip.create(gossip: g.shuffle[0], tag: t.shuffle[0])
# end


# # met un tag sur un gossip

# g.each do |gg|
# 	gg.tags = [t.shuffle[0]] 
# 	gg.save
# end

## Creation du message
	
	# pm = PrivateMessage.create(content: Faker::Books::Dune.saying, sender: u[0])

	# pm.recipients = u[2].received_messages
	# pm.recipients = u[4].received_messages
	# pm.recipients = u[3].received_messages
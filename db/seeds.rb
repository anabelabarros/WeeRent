

puts "Destroing data"

Booking.destroy_all
Item.destroy_all
User.destroy_all




puts "Creating Users"
user = User.create(email: "test@test.com", password: 123456)




puts "Creating Items"
babygro = Item.new(name:"baby gro",  description:"A  warm blue baby gro",   user: user,   category: "sleep", price: 15)
babygro.save

bedside_Crib = Item.new(name:"A bedside crib",  description:"A  comfortable bedside crib for your newborn", user: user, category: "sleep", price: 20)
bedside_Crib.save

steriliser = Item.new(name:"A bottle steriliser", description:"A steriliser", user: user, category:"feeding", price: 12.50)
steriliser.save

highchair = Item.new(name:" A highchair", description:"A  comfortable bedside crib for your newborn", user: user, category: "feeding", price: 9)
highchair.save

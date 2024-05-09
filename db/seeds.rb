

puts "Destroying data"

Booking.destroy_all
Item.destroy_all
User.destroy_all

puts "Creating Users"
user = User.create(email: "test@test.com", password: 123456)


puts "Creating Items"


# Seeds for items in Food category (4 items)
silicone_bib = Item.new(name:"Bunny Silicone Bib",  description:"A cute and practical silicone bib featuring a bunny design, perfect for catching spills and keeping baby's clothes clean during mealtime.",   user: user,   category: "feeding", price: 10.50)
silicone_bib.save

sippy_cup = Item.new(name:"Giraffe Sippy Cup",  description:"A spill-proof sippy cup adorned with a cheerful giraffe motif, designed to help babies transition from bottles to cups with ease.",   user: user,   category: "feeding", price: 10.50)
sippy_cup.save

silicone_placemat = Item.new(name:"Rainbow Silicone Placemat",  description:"A colorful silicone placemat with built-in suction cups, providing a stable surface for feeding and preventing messes on the table",   user: user,   category: "feeding", price: 18.99)
silicone_placemat.save

high_chair_cover = Item.new(name:"Elephant High Chair Cover",  description:"A soft and padded high chair cover featuring an adorable elephant print, adding comfort and style to any standard high chair",   user: user,   category: "feeding", price: 20.50)
high_chair_cover.save

# Seeds for items in Sleep category (4 items)

baby_blanket = Item.new(name:"Dreamy Cloud Baby Blanket:",  description:"A soft and cozy blanket adorned with dreamy clouds, providing warmth and comfort for peaceful sleep.",   user: user,   category: "sleep", price: 27.00)
baby_blanket.save

sleep_sack = Item.new(name:"Snuggle Bug Sleep Sack",  description:"A snug sleep sack designed to keep baby warm and secure all night long, featuring adorable bug prints.",   user: user,   category: "sleep", price: 18.00)
sleep_sack.save

night_light = Item.new(name:"Twinkle Star Night Light",  description:"A gentle night light projecting twinkling stars, creating a soothing ambiance for bedtime.",   user: user,   category: "sleep", price: 20.00)
night_light.save

bear_pillow = Item.new(name:"Snoozy Bear Plush Pillow",  description:"A cuddly plush pillow shaped like a bear, offering extra support and snuggles for a restful sleep.",   user: user,   category: "sleep", price: 15.00)
bear_pillow.save

# Seeds for items in Play category (4 items)

rattle_ring = Item.new(name:"Rainbow Rattle Ring",  description:"A colorful rattle ring designed to stimulate baby's senses and encourage grasping and shaking.",   user: user,   category: "play", price: 10.00)
rattle_ring.save

activity_gym = Item.new(name:"Giggles & Grins Activity Gym",  description:"An interactive activity gym featuring dangling toys and mirrors, fostering exploration and play",   user: user,   category: "play", price: 40.00)
activity_gym.save

soft_book = Item.new(name:"Happy Hippo Soft Book",  description:"A soft fabric book with crinkly pages and squeaky features, promoting early literacy and sensory development",   user: user,   category: "play", price: 8.00)
soft_book.save

stacking_cups = Item.new(name:"Playful Pals Stacking Cups",  description:"Stackable cups in vibrant colors, perfect for building and sorting while developing fine motor skills",   user: user,   category: "play", price: 9.00)
stacking_cups.save

# Seeds for items in Travel category (4 items)
baby_carrier = Item.new(name:"Wanderlust Baby Carrier",  description:"A versatile baby carrier designed for on-the-go parents, offering comfort and support for both baby and caregiver",   user: user,   category: "travel", price: 40.00)
baby_carrier.save

diaper_backpack = Item.new(name:"Adventure Awaits Diaper Backpack",  description:"A spacious backpack with multiple compartments for diapers, wipes, and essentials, ideal for travel and outings",   user: user,   category: "travel", price: 15.00)
diaper_backpack.save

stroller_shade = Item.new(name:"Sunshine Stroller Shade",  description:"A UV-protective shade attachment for strollers, keeping baby cool and shaded during outdoor adventures.",   user: user,   category: "travel", price: 10.00)
stroller_shade.save

activity_center = Item.new(name:"Journey Jumperoo Portable Activity Center",  description:"A foldable activity center with toys and music, providing entertainment and stimulation wherever you go",   user: user,   category: "travel", price: 80.00)
activity_center.save

require "open-uri"

puts "Destroying data"

Booking.destroy_all
Item.destroy_all
User.destroy_all

puts "Creating Users"
user = User.create(email: "test@test.com", password: 123456)

puts "Creating Items"

# Seeds for items in Food category (4 items)
file = URI.open("https://pippeta.com/cdn/shop/products/Pippeta_SpoonFork_AquaBlue.jpg?v=1656069863&width=1200")
silicone_bib = Item.new(name:"Bunny Silicone Bib",  description:"A cute and practical silicone bib featuring a bunny design, perfect for catching spills and keeping baby's clothes clean during mealtime.",   user: user,   category: "feeding", price: 10.50)
silicone_bib.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
silicone_bib.save!

file = URI.open("https://files.ekmcdn.com/07ee36/images/sophie-la-girafe-fresh-touch-non-spill-cup-bpa-free-492-p.png?w=570&h=9999&v=0DEE4659-BA1F-4B49-8DF1-7F406174AAE1")
sippy_cup = Item.new(name:"Giraffe Sippy Cup",  description:"A spill-proof sippy cup adorned with a cheerful giraffe motif, designed to help babies transition from bottles to cups with ease.",   user: user,   category: "feeding", price: 10.50)
sippy_cup.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
sippy_cup.save!

file = URI.open("https://img.kwcdn.com/product/fancy/8f540387-e0c9-4609-87f7-19de16bd3b1b.jpg?imageView2/2/w/800/q/70/format/webp")
silicone_placemat = Item.new(name:"Rainbow Silicone Placemat",  description:"A colorful silicone placemat with built-in suction cups, providing a stable surface for feeding and preventing messes on the table",   user: user,   category: "feeding", price: 18.99)
silicone_placemat.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
silicone_placemat.save!

file = URI.open("https://ae01.alicdn.com/kf/Ae2c06624187f4abb88fb4a77712db906l/Gray-And-Dark-Blue-Elephant-Parents-love-Baby-High-Chair-Cover-Pad-Protecting-from-Spills-and.jpg")
high_chair_cover = Item.new(name:"Elephant High Chair Cover",  description:"A soft and padded high chair cover featuring an adorable elephant print, adding comfort and style to any standard high chair",   user: user,   category: "feeding", price: 20.50)
high_chair_cover.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
high_chair_cover.save!

# Seeds for items in Sleep category (4 items)

file = URI.open("https://m.media-amazon.com/images/I/41LL9eqQ30L._AC_SL1000_.jpg")
baby_blanket = Item.new(name:"Dreamy Cloud Baby Blanket:",  description:"A soft and cozy blanket adorned with dreamy clouds, providing warmth and comfort for peaceful sleep.",   user: user,   category: "sleep", price: 27.00)
baby_blanket.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
baby_blanket.save!

file = URI.open("https://m.media-amazon.com/images/I/813g6NM+dGL._AC_SL1500_.jpg")
sleep_sack = Item.new(name:"Snuggle Bug Sleep Sack",  description:"A snug sleep sack designed to keep baby warm and secure all night long, featuring adorable bug prints.",   user: user,   category: "sleep", price: 18.00)
sleep_sack.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
sleep_sack.save!

file = URI.open("https://m.media-amazon.com/images/I/71PYe+ML2tL._AC_SX342_SY445_.jpg")
night_light = Item.new(name:"Twinkle Star Night Light",  description:"A gentle night light projecting twinkling stars, creating a soothing ambiance for bedtime.",   user: user,   category: "sleep", price: 20.00)
night_light.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
night_light.save!

file = URI.open("https://m.media-amazon.com/images/I/61G9dZtJYSL._SY425_.jpg")
bear_pillow = Item.new(name:"Snoozy Bear Plush Pillow",  description:"A cuddly plush pillow shaped like a bear, offering extra support and snuggles for a restful sleep.",   user: user,   category: "sleep", price: 15.00)
bear_pillow.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
bear_pillow.save!

# Seeds for items in Play category (4 items)

file = URI.open("#")
rattle_ring = Item.new(name:"Rainbow Rattle Ring",  description:"A colorful rattle ring designed to stimulate baby's senses and encourage grasping and shaking.",   user: user,   category: "play", price: 10.00)
rattle_ring.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
rattle_ring.save!

file = URI.open("https://www.phillipstoys.co.uk/media/catalog/product/cache/e22db7669432c5fcaf105fa09b8d3640/5/0/5014475014474new00.37050700_1660313503.jpg")
activity_gym = Item.new(name:"Giggles & Grins Activity Gym",  description:"An interactive activity gym featuring dangling toys and mirrors, fostering exploration and play",   user: user,   category: "play", price: 40.00)
activity_gym.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
activity_gym.save!

file = URI.open("https://i.ebayimg.com/images/g/HwoAAOSw1A9lAflC/s-l1200.webp")
soft_book = Item.new(name:"Happy Hippo Soft Book",  description:"A soft fabric book with crinkly pages and squeaky features, promoting early literacy and sensory development",   user: user,   category: "play", price: 8.00)
soft_book.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
soft_book.save!

file = URI.open("https://img.ltwebstatic.com/images3_spmp/2023/07/10/168896034508649bf9b789262c44d61fe450c0833b_thumbnail_900x.webp")
stacking_cups = Item.new(name:"Playful Pals Stacking Cups",  description:"Stackable cups in vibrant colors, perfect for building and sorting while developing fine motor skills",   user: user,   category: "play", price: 9.00)
stacking_cups.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
stacking_cups.save!

# Seeds for items in Travel category (4 items)
file = URI.open("https://livesportclubs.com/cdn/shop/files/livesport-navy-blue-1-breathable-cotton-comfort-ergonomic-baby-carrier-with-hip-seat-for-maternity-and-infants-47196001992996.webp?v=1714815373&width=1426")
baby_carrier = Item.new(name:"Wanderlust Baby Carrier",  description:"A versatile baby carrier designed for on-the-go parents, offering comfort and support for both baby and caregiver",   user: user,   category: "travel", price: 40.00)
baby_carrier.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
baby_carrier.save!

file = URI.open("https://m.media-amazon.com/images/I/712SmhMeiFL.__AC_SX300_SY300_QL70_ML2_.jpg")
diaper_backpack = Item.new(name:"Adventure Awaits Diaper Backpack",  description:"A spacious backpack with multiple compartments for diapers, wipes, and essentials, ideal for travel and outings",   user: user,   category: "travel", price: 15.00)
diaper_backpack.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
diaper_backpack.save!

file = URI.open("https://babysmi.com/cdn/shop/files/Baby-Stroller-Mosquito-Net-Pushchair-Cart-Insect-Shield-Net-Mesh-Safe-Infants-Protection-Mesh-Cover-Baby_jpg.png?v=1698847722")
stroller_shade = Item.new(name:"Sunshine Stroller Shade",  description:"A UV-protective shade attachment for strollers, keeping baby cool and shaded during outdoor adventures.",   user: user,   category: "travel", price: 10.00)
stroller_shade.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
stroller_shade.save!

file = URI.open("https://goodbuygear.com/cdn/shop/products/4e5931ce16017623db2df6d5cb1bb86d.jpg?v=1637958196")
activity_center = Item.new(name:"Journey Jumperoo Portable Activity Center",  description:"A foldable activity center with toys and music, providing entertainment and stimulation wherever you go",   user: user,   category: "travel", price: 80.00)
activity_center.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
activity_center.save!

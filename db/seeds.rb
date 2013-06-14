# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Type.destroy_all
Category.destroy_all
Role.destroy_all
User.destroy_all
UserRole.destroy_all
Product.destroy_all

types = [
  Type.create(name: "Urban", image_url: "/assets/urban.jpg", icon_url: "/assets/urban-list-icon.jpg"),
  Type.create(name: "Suburban", image_url: "/assets/suburban.png", icon_url: "/assets/suburban-list-icon.jpg"),
  Type.create(name: "Eco-Friendly", image_url: "/assets/eco.jpg"),
  Type.create(name: "High Fashion", image_url: "/assets/high-fashion.jpg")
]

puts "You have #{Type.all.count} types."

categories = [
  Category.create(name: "Move"),
  Category.create(name: "Eat")
]

puts "You have #{Category.all.count} categories."

roles = [
  Role.create(name: "Admin"),
  Role.create(name: "User")
]

puts "You have #{Role.all.count} roles."

users = [
  User.create(email: "test@test.com", first_name: "John", last_name: "Smith", password: "password", password_confirmation: "password"),
  User.create(email: "test1@test1.com", first_name: "Mike", last_name: "Rifken", password: "password", password_confirmation: "password")
]

puts "You have #{User.all.count} users."

user_roles = [
  UserRole.create(user_id: User.first.id, role_id: Role.first.id),
  UserRole.create(user_id: User.last.id, role_id: Role.last.id)
]

puts "You have #{UserRole.all.count} user roles."

products = [
  # Urban Move
  Product.create(name: "Baby Jogger City Mini GT Single Stroller", description: "The multi-award winning City Mini lightweight design makes it perfect for running errands or all day excursion. The City Mini features patented Quick-Fold Technology, Universal Accessory Mounting Bracket, quick-release wheels with sealed ball bearings, front wheel suspension and a swivel front wheel that can lock into place for long distance strolling.", price: 250.00, type_id: Type.first.id, category_id: Category.first.id, image: File.open("#{Rails.root}/app/assets/images/img-100.png"), product_url: "http://www.amazon.com/Baby-Jogger-Single-Stroller-Black/dp/B003WIYNY6/ref=sr_1_sc_1?ie=UTF8&qid=1370782572&sr=8-1-spell&keywords=Baby+Jogger%E2%84%A2+City+Mini+Single+Stroller+-+Blac", img_url: "/assets/img-100.png"),
  Product.create(name: "JJ Cole Urban Bundleme", description: "For use with all car seats, strollers, and joggers. Easy to clean. Allows safety straps to rest directly on the child.", price: 50.00, type_id: Type.first.id, category_id: Category.first.id, product_url: "http://www.amazon.com/JJ-Cole-Bundleme-Stealth-Infant/dp/B000G7YO5E/ref=sr_1_2?s=baby-products&ie=UTF8&qid=1370689443&sr=1-2&keywords=jj+cole+bundle+me", image: File.open("#{Rails.root}/app/assets/images/img-104.png"), img_url: "/assets/img-104.png"),
  Product.create(name: "ERGObaby Original Baby Carrier", description: "The ergonomic design is so comfortable, you can wear the carrier longer because the padded shoulder straps and padded waistbelt evenly distribute baby's weight between your shoulders and hips.", price: 125.00, type_id: Type.first.id, category_id: Category.first.id, product_url: "http://www.amazon.com/Ergo-Carrier-Black-Camel-Lining/dp/B0010PW3A4/ref=sr_1_1?s=baby-products&ie=UTF8&qid=1370668879&sr=1-1&keywords=ergobaby", image: File.open("#{Rails.root}/app/assets/images/img-107.png"), img_url: "/assets/img-107.png"),
  Product.create(name: "Moby Wrap Original Baby Carrier", description: "The design of the Moby Wrap uses your entire back, as well as your shoulders, to carry the weight of your baby. It offers three ways for baby to face. The Moby Wrap utilizes a wide piece of durable fabric that is wrapped over both shoulders. It is amazingly comfortable and easy to wear. There are no buckles, snaps or other fasteners that may break or bend. It is easy to adjust the fit of your Moby Wrap by varying how tightly you wrap yourself and baby. Moby Wraps are one size which means all caregivers can easily and comfortably share one wrap. For use with babies from 8 to 35 pounds.", price: 48.00, type_id: Type.first.id, category_id: Category.first.id, image: File.open("#{Rails.root}/app/assets/images/img-109.png"), product_url: "http://www.amazon.com/Moby-Wrap-Original-Carrier-Chocolate/dp/B000X4WORU/ref=sr_1_2?ie=UTF8&qid=1370783725&sr=8-2&keywords=moby+wrap", img_url: "/assets/img-109.png"),
  # Urban Eat
  Product.create(name: "Fisher Price Space Saver High Chair", description: "Big high chair features for a small dining space. Simply strap it to just about any kitchen or dining chair for everything a full-size high chair offers in half the space.", price: 60.00, type_id: Type.first.id, category_id: Category.last.id, product_url: "http://www.amazon.com/Fisher-Price-Space-Saver-Chair-Scatterbug/dp/B005IWM99K/ref=sr_1_1?srs=2529427011&ie=UTF8&qid=1370783909&sr=8-1&keywords=fisher+price+space+saver", image: File.open("#{Rails.root}/app/assets/images/img-115.png"), img_url: "/assets/img-115.png"),
  Product.create(name: "Lifefactory BPA-Free Glass Baby Bottles w/ Silicone Sleeve-4 pack (9 oz.+4oz. Sky & Orange)", description: "Lifefactory bottles are made using the healthiest and safest materials available and are built to grow with your family through every life stage. ", price: 52.00, type_id: Type.first.id, category_id: Category.last.id, product_url: "http://www.amazon.com/Lifefactory-BPA-Free-Bottles-Silicone-Sleeve-4/dp/B00271BPZO/ref=sr_1_sc_3?s=home-garden&ie=UTF8&qid=1370705469&sr=1-3-spell&keywords=life+factory+baby+bottle", image: File.open("#{Rails.root}/app/assets/images/img-116.png"), img_url: "/assets/img-116.png"),
  Product.create(name: "BabyBjorn Soft Bib", description: "Catch those messy food spills before they hit the ground, or your baby's cute outfit. The Soft Bib's deep pocket catches food spills, and the extra soft, PVC-free, recyclable plastic is easy to rinse clean as well as being dishwasher safe.", price: 12.00, type_id: Type.first.id, category_id: Category.last.id, product_url: "http://www.amazon.com/BabyBj%C3%B6rn-046062US-BABYBJORN-Soft-Green/dp/B000BFP0HC/ref=sr_1_2?s=baby-products&ie=UTF8&qid=1370690954&sr=1-2&keywords=baby+bjorn+bib", image: File.open("#{Rails.root}/app/assets/images/img-129.png"), img_url: "/assets/img-129.png"),
  Product.create(name: "OXO Tot 4-Piece Feeding Set", description: "Easy for little hands to hold. Plate ring can be removed once your tot has mastered his table manners!", price: 20.00, type_id: Type.first.id, category_id: Category.last.id, product_url: "http://www.amazon.com/OXO-Tot-4-Piece-Feeding-Green/dp/B0038JE5N8/ref=sr_1_1?s=baby-products&ie=UTF8&qid=1370667464&sr=1-1&keywords=Oxo+Tot+4-Piece+Feeding+Set", image: File.open("#{Rails.root}/app/assets/images/img-124.png"), img_url: "/assets/img-124.png"),
  # Suburban Move
  Product.create(name: "UPPAbaby Vista Stroller", description: "The VISTA is a convertible stroller system that can transport up to three children - without growing wider. Designed to adapt as your family grows, the VISTA accommodates your precious cargo from birth through the toddler years.", price: 730.00, type_id: Type.all.second.id, category_id: Category.first.id, product_url: "http://www.amazon.com/UPPAbaby-0112-Vista-Stroller-Jake/dp/B0077J2KB4/ref=sr_1_1?s=baby-products&ie=UTF8&qid=1370668184&sr=1-1&keywords=uppababy+vista", image: File.open("#{Rails.root}/app/assets/images/img-1.png"), img_url: "/assets/img-1.png"),
  Product.create(name: "JJ Cole Urban Bundleme", description: "For use with all car seats, strollers, and joggers. Easy to clean. Allows safety straps to rest directly on the child.", price: 50.00, type_id: Type.all.second.id, category_id: Category.first.id, product_url: "http://www.amazon.com/JJ-Cole-Bundleme-Stealth-Infant/dp/B000G7YO5E/ref=sr_1_2?s=baby-products&ie=UTF8&qid=1370689443&sr=1-2&keywords=jj+cole+bundle+me", image: File.open("#{Rails.root}/app/assets/images/img-5.png"), img_url: "/assets/img-5.png"),
  Product.create(name: "Graco Pack 'N Play Playard with Bassinet", description: "Perfect for traveling, this mesh-sided Pack 'n Play playard sets up in less than a minute. It comes with a full-size bassinet, a great place for infants up to 15 lbs. to nap peacefully. The folding feet and wheels make this Pack 'n Play easy to carry and give it a more compact fold. A convenient travel bag is also included - just fold the Pack 'n Play playard, stow it in the bag, and you and your little one are off to see the world. ", price: 70.00, type_id: Type.all.second.id, category_id: Category.first.id, product_url: "http://www.amazon.com/Graco-Pack-Playard-Bassinet-Pasadena/dp/B004Y9AKZI/ref=sr_1_fkmr0_1?s=baby-products&ie=UTF8&qid=1370689963&sr=1-1-fkmr0&keywords=Graco%C2%AE+On-the-Go+Travel+Pack+%27n+Play%C2%AE+Playard+-+Go+Green", image: File.open("#{Rails.root}/app/assets/images/img-8.png"), img_url: "/assets/img-8.png"),
  Product.create(name: "Summer Infant Deluxe Infant Travel Bed", description: "Polyester & poly urethane foam. Light easy fold-n-go design; Perfect for changing baby and napping on the go.Breathable mesh allows for airflow and prevents suffocation. Removable toy bar with toys. Side pockets. Shoulder straps.", price: 29.99, type_id: Type.all.second.id, category_id: Category.first.id, product_url: "http://www.amazon.com/Summer-Infant-Deluxe-Travel-Bed/dp/B004QDKMNC/ref=sr_1_2?s=baby-products&ie=UTF8&qid=1370995921&sr=1-2&keywords=baby+travel", image: File.open("#{Rails.root}/app/assets/images/img-11.png"), img_url: "/assets/img-11.png"),
  # Suburban Eat
  Product.create(name: "Peg Perego Siesta Highchair", description: "From birth, the Siesta can be used as a recliner or as a high chair for feeding, playing and resting. The removable tray and multiple height positions allow child to sit right at the table. With a full recliner, multiple height settings and easy fold, the Siesta lets your baby join you at the dinner table. Buttery soft Prima Classe upholstered seat cleans easily with a damp cloth. Double tray with removable, dishwasher-proof liner. Practical rubber storage net on back of seat.", price: 300.00, type_id: Type.all.second.id, category_id: Category.last.id, product_url: "http://www.amazon.com/Peg-Perego-Siesta-Highchair-Mela/dp/B006TF6TJQ/ref=sr_1_1?s=baby-products&ie=UTF8&qid=1370692655&sr=1-1&keywords=peg+perego+siesta", image: File.open("#{Rails.root}/app/assets/images/img-13.png"), img_url: "/assets/img-13.png"),
  Product.create(name: "Dr. Brown's 4 oz Natural Flow Baby Bottle, 3 Pack", description: "Moms agree that Dr. Brown's is the best bottle to prevent colic. BPA Free.", price: 16.00, type_id: Type.all.second.id, category_id: Category.last.id, product_url: "http://www.amazon.com/Dr-Browns-Natural-Flow-Bottle/dp/B00005BYUR", image: File.open("#{Rails.root}/app/assets/images/img-14.png"), img_url: "/assets/img-14.png"),
  Product.create(name: "Thinkbaby BPA Free No Spill Sippy Cup, Orange/Natural, 9 Ounce", description: "Thinkbaby raises the stakes on both health and design with this easy-to-hold bottle that transitions into a cup.", price: 14.00, type_id: Type.all.second.id, category_id: Category.last.id, product_url: "http://www.amazon.com/Thinkbaby-Spill-Sippy-Orange-Natural/dp/B003LPUPVU/ref=sr_1_1?s=baby-products&ie=UTF8&qid=1370702651&sr=1-1&keywords=think+baby+training+cup", image: File.open("#{Rails.root}/app/assets/images/img-20.png"), img_url: "/assets/img-20.png"),
  Product.create(name: "Aden by Aden + Anais Muslin Burpy Bib", description: "Versatile, comfortable, stylish and safe, Comfy: the more you wash it, the softer it gets, Dual function as a burp cloth or bib, 100% Cotton Muslin, Made in China.", price: 9.99, type_id: Type.all.second.id, category_id: Category.last.id, product_url: "http://www.amazon.com/Aden-aden-anais-Muslin-Burpy/dp/B0057IQFKE/ref=sr_1_fkmr0_2?s=baby-products&ie=UTF8&qid=1370667530&sr=1-2-fkmr0&keywords=aden%E2%84%A2+by+aden+%2B+anais%C2%AE+%22Oh%2C+My%22+Burpy+Bibs", image: File.open("#{Rails.root}/app/assets/images/img-21.png"), img_url: "/assets/img-21.png"),
]

puts "You have #{Product.all.count} products."


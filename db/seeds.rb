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
  Type.create(name: "Urban", image_url: "/assets/urban.jpg"),
  Type.create(name: "Suburban", image_url: "/assets/suburban.png"),
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
  Product.create(name: "UPPAbaby Vista Stroller", description: "The VISTA is a convertible stroller system that can transport up to three children - without growing wider. Designed to adapt as your family grows, the VISTA accommodates your precious cargo from birth through the toddler years.", price: 730.00, type_id: Type.first.id, category_id: Category.first.id),
  Product.create(name: "UPPABaby Vista Snack Tray", description: "Formed cup holder fits sippy cup and juice boxes of various sizes. BPA free, dishwasher safe.", price: 40.00, type_id: Type.last.id, category_id: Category.first.id),
  Product.create(name: "ERGObaby Original Baby Carrier", description: "The ergonomic design is so comfortable, you can wear the carrier longer because the padded shoulder straps and padded waistbelt evenly distribute baby's weight between your shoulders and hips.", price: 125.00, type_id: Type.first.id, category_id: Category.first.id),
  Product.create(name: "JJ Cole Collections Strap Cover", description: "These reversible strap covers are a stylish way to make your baby's car seat more comfortable. They easily wrap around the car seat harness to protect your child's face from the rubbing of rough seat belts.", price: 10.00, type_id: Type.last.id, category_id: Category.first.id),
  Product.create(name: "Peg Perego Siesta Highchair", description: "From birth, the Siesta can be used as a recliner or as a high chair for feeding, playing and resting. The removable tray and multiple height positions allow child to sit right at the table. With a full recliner, multiple height settings and easy fold, the Siesta lets your baby join you at the dinner table. Buttery soft Prima Classe upholstered seat cleans easily with a damp cloth. Double tray with removable, dishwasher-proof liner. Practical rubber storage net on back of seat.", price: 300.00, type_id: Type.first.id, category_id: Category.last.id),
  Product.create(name: "OXO Tot 4-Piece Feeding Set", description: "Easy for little hands to hold. Plate ring can be removed once your tot has mastered his table manners!", price: 20.00, type_id: Type.last.id, category_id: Category.last.id),
  Product.create(name: "Aden+Anais Muslin Burpy Bib", description: "This dual-function 100% cotton bib also functions as a burp cloth. Plus the more you wash it, the softer it gets.", price: 10.00, type_id: Type.first.id, category_id: Category.last.id),
  Product.create(name: "Baby Bullet Food Processor", description: "'The Baby Bullet' Food Processor allows you to easily make and store homemade, healthy and delicious baby food. Simply place the batchbowl or one of the short cups on the high-torque power base, press down, twist and you're making baby food.", price: 68.00, type_id: Type.last.id, category_id: Category.last.id)
]

puts "You have #{Product.all.count} products."


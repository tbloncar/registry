# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Type.destroy_all
Role.destroy_all
User.destroy_all
UserRole.destroy_all

types = [
  Type.create(name: "Classic"),
  Type.create(name: "Premium"),
  Type.create(name: "Urban")
]

puts "You have #{Type.all.count} types."

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


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Deleting users..."
User.destroy_all
puts "Users deleted"

puts "Deleting evocations..."
Evocation.destroy_all
puts "Evocations deleted"

puts "Seeding evocations.."
Evocation.create!(text: "first evocation")
Evocation.create!(text: "second evocation")
puts "Done seeding"

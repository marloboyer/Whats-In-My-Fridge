# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Item.create(name: "Milk", category: "Dairy", lives_at: "Fridge", best_by: "7/30/2023")
Item.create(name: "Dipped Strawberry in Milk Chocolate Ice Cream", category: "Dairy", lives_at: "Freezer", best_by: "7/12/2023")
Item.create(name: "Ground Beef", category: "Meat", lives_at: "Fridge", best_by: "7/17/2023")

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning up"

Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all

puts "Seeding!"

Ingredient.create(name: 'lemon')
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "ginger")
Ingredient.create(name: "turmeric")
i = 0

names = ["Paul", "Pierre", "Jacques", "Anna", "Marie"]

5.times do
  cocktail = Cocktail.create(name: names[i])

  dose = Dose.new(description: "5ml")
  dose.cocktail = cocktail
  dose.ingredient = Ingredient.all[i]
  dose.save
  i += 1
end

puts "Done!"

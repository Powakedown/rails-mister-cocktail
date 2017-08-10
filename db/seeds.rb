# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

10.times do
  quantity = "#{rand(2..30)}" + "cl"
  Ingredient.create(name: Faker::Food.ingredient)
  Cocktail.create(name: Faker::Beer.name)
  Dose.create(description:quantity, ingredient_id:rand(1..10), cocktail_id:1)
end


# filepath = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

# serialized_ingredients = File.read(filepath)

# ingredients = JSON.parse(serialized_ingredients)

# ingredients.each do |ingredient|
#   Ingredient.create(name: ingredient[:strIngredient1])
# end

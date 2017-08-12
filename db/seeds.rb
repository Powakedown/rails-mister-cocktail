require 'json'

filepath = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
serialized_ingredients = RestClient.get(filepath)
ingredients = JSON.parse(serialized_ingredients)
ingredients['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
  puts "Création de l'ingrédient '#{ingredient['strIngredient1']}'"
end

cocktails = ["Sex on the Beach", "Jeudi Noir", "Wagon fumant", "Mother Swag", "Prude octobre", "Cruelle vengeance", "Peur de l'abîme", "Course à la mort", "Risque d'amour"]

# cocktails.each_with_index do |item, index|
#  Cocktail.create(name: item)
#  puts "Création du cocktail #{item}"
# end

# 10.times do
#   quantity = "#{rand(2..30)}" + "cl"
#   Dose.create(description:quantity, ingredient_id:rand(1..Ingredient.count), cocktail_id:1)
#   puts "Création d'un dose pour le cocktail 1"
# end



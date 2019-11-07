require 'open-uri'
require 'json'

puts "Deleting all the ingredients..."
Ingredient.destroy_all

puts "Populating the database with new ingredients..."
response = open("http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read
json = JSON.parse(response)
json['drinks'].each do |element|
    Ingredient.create!(name: element['strIngredient1'])
end
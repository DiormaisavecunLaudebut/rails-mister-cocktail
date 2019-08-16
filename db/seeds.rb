require 'faker'
require 'open-uri'
require 'nokogiri'

# 15.times do
#   ingredient = Ingredient.new(name: Faker::Food.ingredient)
#   ingredient2 = Ingredient.new(name: Faker::Food.ingredient)
#   ingredient3 = Ingredient.new(name: Faker::Food.ingredient)
#   cocktail = Cocktail.new(name: Faker::Beer.name)
#   dose = Dose.new(quantity: (1..7).to_a.sample, cocktail: cocktail, ingredient: ingredient)
#   dose2 = Dose.new(quantity: (1..7).to_a.sample, cocktail: cocktail, ingredient: ingredient2)
#   dose3 = Dose.new(quantity: (1..7).to_a.sample, cocktail: cocktail, ingredient: ingredient3)
#   dose.cocktail_id = cocktail.id
#   dose2.cocktail_id = cocktail.id
#   dose3.cocktail_id = cocktail.id
#   ingredient.save
#   ingredient3.save
#   ingredient2.save
#   dose.save
#   dose2.save
#   dose3.save
#   cocktail.save
# end

url = "https://www.destinationcocktails.fr/recettes-cocktails/"

html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)

html_doc.search('.image.bg').each do |element|
  puts element.attribute('style').value.match(/'.*'/)
end

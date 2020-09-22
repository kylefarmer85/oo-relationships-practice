require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


savages = Bakery.new("Savages")
the_donut_hole = Bakery.new("The Donut Hole")
baking_bandits = Bakery.new("Baking_Bandits")

chocolate = Ingredient.new("chocolate", 100)
vanilla = Ingredient.new("vanilla", 80) 
sugar = Ingredient.new("sugar", 120)
flour = Ingredient.new("flour", 30)
dough = Ingredient.new("dough", 60)
eggs = Ingredient.new("eggs", 70)

donut = Dessert.new("donut", the_donut_hole, sugar, dough, vanilla)
cake = Dessert.new("cake", savages, flour, sugar, eggs)
cookie = Dessert.new("cookie", baking_bandits, sugar, vanilla, chocolate)


# TESTS
savages.ingredients
the_donut_hole.desserts
baking_bandits.average_calories
savages.shopping_list

donut.calories

vanilla.dessert
chocolate.bakeries
Ingredient.find_all_by_name("sugar")


binding.pry
0
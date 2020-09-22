class Dessert
  attr_reader :name, :bakery, :ingredients

  @@all = []

  def initialize(name, bakery, *ingredients)
    @name = name
    @bakery = bakery
    @ingredients = ingredients
    @@all << self
  end

  def self.all
    @@all
  end

  def calories
    cal = 0
    ingredients.flatten.each do |ingredient| 
      cal += ingredient.calories
    end
    cal
  end
  
end

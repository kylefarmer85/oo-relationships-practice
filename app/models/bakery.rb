class Bakery
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    desserts.select {|dessert|
      dessert.ingredients }	
  end

  def desserts
    Dessert.all.select { |dessert| dessert.bakery == self }
  end

  def average_calories
    cal = 0
    count = 0
    ingredients.flatten.each do |ingredient| 
      cal += ingredient.calories
      count += 1
    end
    cal / count
  end

  def shopping_list
    ingredients.flatten.map {|ingredient| ingredient.name}
  end

end
class Ingredient
  attr_reader :name, :calories

  @@all = []

  def initialize(name, calories)
    @name = name
    @calories = calories
    @@all << self
  end

  def self.all
    @@all
  end

  def dessert
    Dessert.all.map do |dessert|
      if dessert.ingredients.include? (self)
        dessert
      end
    end.compact
  end

  def bakeries
    Dessert.all.map do |dessert|
      if dessert.ingredients.include? (self)
        dessert.bakery
      end
    end.compact
  end

  def self.find_all_by_name(str)
    all.map do |ingredient|
      if ingredient.name.include? (str)
        ingredient
      end
    end.compact
  end
  
end
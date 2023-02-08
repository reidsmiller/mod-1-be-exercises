require 'rspec'
require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do
  describe '#Iteration 2' do
    it 'has a date and dishes' do
      potluck = Potluck.new("7-13-18")

      expect(potluck.date).to eq("7-13-18")
      expect(potluck.dishes).to eq([])
    end
    
    it 'can add dishes to dishes array' do
      potluck = Potluck.new("7-13-18")
      couscous_salad = Dish.new("Couscous Salad", :appetizer)
      cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)

      potluck.add_dish(couscous_salad)
      potluck.add_dish(cocktail_meatballs)

      expect(potluck.dishes.length).to eq(2)
    end
  end

  describe '#Iteration 3' do
    it 'can get all from a specified category' do
      potluck = Potluck.new("7-13-18")
      couscous_salad = Dish.new("Couscous Salad", :appetizer)
      summer_pizza = Dish.new("Summer Pizza", :appetizer)
      roast_pork = Dish.new("Roast Pork", :entre)
      cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
      candy_salad = Dish.new("Candy Salad", :dessert)

      potluck.add_dish(couscous_salad)
      potluck.add_dish(summer_pizza)
      potluck.add_dish(roast_pork)
      potluck.add_dish(cocktail_meatballs)
      potluck.add_dish(candy_salad)

      expect(potluck.get_all_from_category(:appetizer).length).to eq(2)
      expect(potluck.get_all_from_category(:appetizer).first.name).to eq("Couscous Salad")
    end
  end

  describe '#Iteration 4' do
    it 'has a menu' do
      potluck = Potluck.new("7-13-18")
      couscous_salad = Dish.new("Couscous Salad", :appetizer)
      summer_pizza = Dish.new("Summer Pizza", :appetizer)
      roast_pork = Dish.new("Roast Pork", :entre)
      cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
      candy_salad = Dish.new("Candy Salad", :dessert)
      bean_dip = Dish.new("Bean Dip", :appetizer)

      potluck.add_dish(couscous_salad)
      potluck.add_dish(summer_pizza)
      potluck.add_dish(roast_pork)
      potluck.add_dish(cocktail_meatballs)
      potluck.add_dish(candy_salad)
      potluck.add_dish(bean_dip)

      expect(potluck.menu.keys).to eq([:appetizer, :entre, :dessert])
    end

    it 'knows category ratios' do
      potluck = Potluck.new("7-13-18")
      couscous_salad = Dish.new("Couscous Salad", :appetizer)
      summer_pizza = Dish.new("Summer Pizza", :appetizer)
      roast_pork = Dish.new("Roast Pork", :entre)
      cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
      candy_salad = Dish.new("Candy Salad", :dessert)
      bean_dip = Dish.new("Bean Dip", :appetizer)

      potluck.add_dish(couscous_salad)
      potluck.add_dish(summer_pizza)
      potluck.add_dish(roast_pork)
      potluck.add_dish(cocktail_meatballs)
      potluck.add_dish(candy_salad)
      potluck.add_dish(bean_dip)

      expect(potluck.ratio(:appetizer)).to eq(50.0)
    end
  end
end
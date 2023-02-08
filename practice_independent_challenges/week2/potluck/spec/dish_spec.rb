require './lib/dish'

RSpec.describe Dish do
  describe '#Iteration 1' do
    it 'has a name and a category' do
      dish = Dish.new("Couscous Salad", :appetizer)

      expect(dish.name).to eq("Couscous Salad")
      expect(dish.category).to eq(:appetizer)
    end
  end
end
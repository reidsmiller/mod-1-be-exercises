class Potluck
  attr_accessor :date, :dishes
  def initialize (date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    self.dishes << dish
  end

  def get_all_from_category(type)
    dishes.select { |dish| dish.category == type}
  end
end
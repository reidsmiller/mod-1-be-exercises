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

  def menu
    menu = Hash.new {|hash, key| hash[key] = []}
    dishes.each do |dish|
      menu[dish.category] << dish.name
    end
    menu
  end

  def ratio(type)
    total = dishes.length
    total_cat = dishes.count {|dish| dish.category == type}
    ratio = total_cat/total.to_f * 100
  end
end
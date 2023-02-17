class Bag
  attr_reader :candies
  def initialize
    @candies = []
  end

  def empty?
    @candies == []
  end

  def count
    @candies.length
  end

  def add_candy(candy)
    @candies << candy
  end

  def contains?(string)
    @candies.any? {|candy| candy.type == string}
  end
end
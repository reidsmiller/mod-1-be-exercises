class Building
  attr_reader :name, :number
  def initialize (number, name)
    @name = name
    @number = number
    @apartments = []
  end

  def add_apartment(apartment)
    @apartments << apartment if @apartments.length < 4
  end

  def list_apartments
    @apartments
  end
end
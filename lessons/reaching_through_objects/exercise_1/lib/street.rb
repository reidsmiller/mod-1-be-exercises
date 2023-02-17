class Street
  attr_reader :name
  def initialize (name)
    @name = name
    @building_list = []
  end

  def add_building(building)
    @building_list << building
  end

  def buildings
    building_names = []
    @building_list.each {|building| building_names << building.name}
    building_names.sort_by {|building| building.chars.first}
  end

  def number_of_available_apartments
    count = 0
    @building_list.each do |building|
      building.list_apartments.each do |apartment|
        count += 1 if apartment.is_rented? == false
      end
    end
    count
  end

  def list_of_available_apartments
    
  end
end
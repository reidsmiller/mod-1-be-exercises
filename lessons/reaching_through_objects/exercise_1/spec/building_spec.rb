require 'spec_helper'

RSpec.describe Building do
  it 'has a number and name' do
    building = Building.new("623", "Saville Apartment Building")

    expect(building.name).to eq("Saville Apartment Building")
    expect(building.number).to eq("623")
  end

  it 'can have up to four apartments' do
    building = Building.new("623", "Saville Apartment Building")
    apt_1 = Apartment.new
    apt_2 = Apartment.new
    apt_3 = Apartment.new
    apt_4 = Apartment.new
    apt_5 = Apartment.new

    building.add_apartment(apt_1)
    building.add_apartment(apt_2)
    building.add_apartment(apt_3)
    

    expect(building.list_apartments).to eq([apt_1, apt_2, apt_3])
    
    building.add_apartment(apt_4)
    building.add_apartment(apt_5)

    expect(building.list_apartments).to eq([apt_1, apt_2, apt_3, apt_4])
  end
end
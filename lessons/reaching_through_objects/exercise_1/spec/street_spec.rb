require 'spec_helper'

RSpec.describe Street do
  it 'can have a name' do
    adlington = Street.new('Adlington Road')

    expect(adlington.name).to eq('Adlington Road')
  end

  it 'can add buildings to street and list alphabetically' do
    adlington = Street.new('Adlington Road')
    zebra = Building.new("123", "Zebra Apartments")
    saville = Building.new("623", "Saville Apartment Building")

    adlington.add_building(zebra)
    adlington.add_building(saville)

    expect(adlington.buildings).to eq(["Saville Apartment Building", "Zebra Apartments"])
  end

  it 'can call number of apartments not currently rented' do
    adlington = Street.new('Adlington Road')
    zebra = Building.new("123", "Zebra Apartments")
    saville = Building.new("623", "Saville Apartment Building")

    adlington.add_building(zebra)
    adlington.add_building(saville)

    apt_1 = Apartment.new
    apt_2 = Apartment.new
    apt_3 = Apartment.new
    apt_4 = Apartment.new
    apt_5 = Apartment.new

    zebra.add_apartment(apt_1)
    zebra.add_apartment(apt_2)
    zebra.add_apartment(apt_3)
    saville.add_apartment(apt_4)
    saville.add_apartment(apt_5)

    expect(adlington.number_of_available_apartments).to eq(5)

    apt_1.rent
    apt_2.rent
    apt_4.rent

    expect(adlington.number_of_available_apartments).to eq(2)
  end

  it 'can list apartments not currently rented with rooms' do
    adlington = Street.new('Adlington Road')
    zebra = Building.new("123", "Zebra Apartments")
    saville = Building.new("623", "Saville Apartment Building")

    adlington.add_building(zebra)
    adlington.add_building(saville)

    apt_1 = Apartment.new
    apt_2 = Apartment.new
    apt_3 = Apartment.new
    apt_4 = Apartment.new
    apt_5 = Apartment.new

    zebra.add_apartment(apt_1)
    zebra.add_apartment(apt_2)
    zebra.add_apartment(apt_3)
    saville.add_apartment(apt_4)
    saville.add_apartment(apt_5)

    apt_1.rent
    apt_4.rent

    expect(adlington.list_of_available_apartments).to eq({"Zebra Apartments" => ['bedroom', 'kitchen', 'living room'], "Zebra Apartments" => ['bedroom', 'bathroom', 'kitchen'], "Saville Apartments" => ['bathroom', 'bedroom']})

  end
end
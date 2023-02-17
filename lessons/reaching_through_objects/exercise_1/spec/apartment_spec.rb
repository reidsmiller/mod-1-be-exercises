require 'spec_helper'

RSpec.describe Apartment do
  it 'is not rented by default, but can be rented' do
    apartment = Apartment.new

    expect(apartment.is_rented?).to eq false
    apartment.rent
    expect(apartment.is_rented?).to eq true
  end

  it 'can add rooms' do
    apartment = Apartment.new
    bathroom = Room.new('bathroom')

    apartment.add_room(bathroom)
    apartment.add_room(Room.new("laundry"))
    expect(apartment.rooms[1].name).to eq("laundry")
  end

  it 'can have up to 4 rooms' do
    apartment = Apartment.new
    bathroom = Room.new('bathroom')

    apartment.add_room(bathroom)
    apartment.add_room(Room.new("laundry"))
    apartment.add_room(Room.new("kitchen"))
    apartment.add_room(Room.new("bedroom"))

    expect(apartment.rooms.length).to eq(4)

    apartment.add_room(Room.new("storage"))

    expect(apartment.rooms.length).to eq(4)
  end

  it 'can sort names alphabetically' do
    apartment = Apartment.new
    bathroom = Room.new('bathroom')

    apartment.add_room(bathroom)
    apartment.add_room(Room.new("laundry"))
    apartment.add_room(Room.new("kitchen"))
    apartment.add_room(Room.new("bedroom"))

    expect(apartment.list_rooms_by_name_alphabetically).to eq(["bathroom", "bedroom", "kitchen", "laundry"])
  end
end
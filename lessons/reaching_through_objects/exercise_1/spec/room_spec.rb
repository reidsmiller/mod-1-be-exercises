require 'spec_helper'

RSpec.describe Room do
  it 'has a name' do
    bathroom = Room.new('Bathroom')

    expect(bathroom.name).to eq('Bathroom')
  end

  it 'can have a different name' do
    laundry_room = Room.new('Laundry Room')

    expect(laundry_room.name).to eq('Laundry Room')
  end
end
require 'rspec'
require './lib/card_generator'
require './lib/card'

RSpec.describe CardGenerator do
  it 'exists' do
    filename = ('./cards.txt')
    card_generator = CardGenerator.new(filename)

    expect(card_generator).to be_instance_of(CardGenerator)
  end

  it 'can read txt file and store in variable' do
    filename = ('./cards.txt')
    card_generator = CardGenerator.new(filename)

    card_generator.read_txt

    expect(card_generator.lines.length).to eq(4)
  end

  it 'converts text into cards' do
    filename = ("cards.txt")
    card_generator = CardGenerator.new(filename)

    card_generator.read_txt
    card_generator.convert_to_card

    expect(card_generator.cards[1].category).to eq("Turing Staff")
  end
end
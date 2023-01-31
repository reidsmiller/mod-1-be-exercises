require './lib/card'
require './lib/deck'

RSpec.describe Deck do
  it 'can hold cards and count' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]

    deck = Deck.new(cards)
    
    expect(deck).to be_instance_of(Deck)
    expect(deck.count).to eq(3)
  end

  it 'finds cards in a category' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]

    deck = Deck.new(cards)

    stem_cards = deck.cards_in_category(:STEM)
    geo_cards = deck.cards_in_category(:Geography)
    pop_cards = deck.cards_in_category("Pop Culture")

    expect(stem_cards.length).to eq(2)
    expect(geo_cards.length).to eq(1)
    expect(pop_cards).to eq([])
  end
end
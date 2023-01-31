require './lib/card'
require './lib/deck'
require './lib/round'
require './lib/turn'

card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
card_4 = Card.new("What is the oldest pokemon?", "Mew", :Pokemon)
card_5 = Card.new("What is Reid's favorite pokemon?", "Lugia", :Pokemon)

deck = Deck.new([card_1, card_2, card_3, card_4, card_5])
round = Round.new(deck)

round.start

until round.turns.length == deck.count
  round.guess_response
end

round.game_over
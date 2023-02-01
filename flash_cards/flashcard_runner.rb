require './lib/card'
require './lib/deck'
require './lib/round'
require './lib/turn'
require './lib/card_generator'

filename = ('./cards.txt')
card_generator = CardGenerator.new(filename)

card_generator.read_txt
card_generator.convert_to_card

deck = Deck.new(card_generator.cards)
round = Round.new(deck)

round.start

until round.turns.length == deck.count
  round.guess_response
end

round.game_over
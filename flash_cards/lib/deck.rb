class Deck
  attr_accessor :cards
  def initialize (cards)
    @cards = cards
  end

  def count
    cards.length
  end

  def cards_in_category (subject)
    subdeck = self.cards.select do |card|
      card.category == subject
    end
    return subdeck
  end
end
class Round
  attr_accessor :deck, :turns
  def initialize (deck)
    @deck = deck
    @turns = []
    @current_card = current_card
  end

  def current_card
    @current_card = deck.cards[turns.length]
  end

  def take_turn(guess)
    new_turn = Turn.new(guess, current_card)
    self.turns << new_turn
    return new_turn
  end

  def number_correct
    turns.count do |turn|
      turn.correct?
    end
  end

  def number_correct_by_category(subject)
    selected = turns.select do |turn|
      turn.card.category == subject
    end
    require 'pry'; binding.pry
    select_correct = selected.count do |turn|
      turn.correct?
    end
  end

  def percent_correct
    correct = turns.count do |turn|
      turn.correct?
    end
    percent = correct.to_f/turns.length.to_f*100
  end

  def percent_correct_by_category(subject)
    selected = turns.select do |turn|
      turn.card.category == subject
    end
    selected_correct = selected.count do |turn|
      turn.correct?
    end
    percent = selected_correct.to_f/selected.length.to_f*100
  end

  def start
    p "Welcome! You're playing with #{deck.count} cards."
    p "_____________________________________________________"
  end

  def guess_response
    p "This is card number #{turns.length+1} out of #{deck.count}."
    p "Question: #{current_card.question}"
    new_turn = self.take_turn(gets.chomp)
    p "#{new_turn.guess}"
    p "#{new_turn.feedback}"
  end

  def game_over
    p "****** Game over! ******"
    p "You had #{self.number_correct} out of #{deck.count} for a total score of #{percent_correct}%."
    categories = []
    turns.each do |turn|
      categories << turn.card.category
    end
    categories.uniq!
    categories.each do |category|
      p "#{category} - #{self.percent_correct_by_category(category)}% correct"
    end
  end

end
class Turn
  attr_accessor :guess, :card
  def initialize (guess, card)
    @guess = guess
    @card = card
  end

  def correct?
    if self.guess == card.answer
      true
    else
      false
    end
  end

  def feedback
    if self.correct? == true
      'Correct!'
    else
      'Incorrect.'
    end
  end
end
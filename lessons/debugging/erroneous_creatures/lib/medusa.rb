class Medusa

  attr_reader :name
  attr_accessor :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    victim.stone = true
    self.statues << victim
  end

  def statues
    @statues
  end

  def count
    statues.length
  end

end

class Person

  attr_reader :name
  attr_accessor :stone

  def initialize(name)
    @name = name
    @stone = false
  end

  def stoned?
    @stone
  end

end

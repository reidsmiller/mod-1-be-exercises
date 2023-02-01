class CardGenerator
  attr_accessor :filename, :lines, :cards
  def initialize (filename)
    @filename = filename
    @lines = []
    @cards = []
  end

  def read_txt
    File.foreach(filename) do |line|
    lines << line.chomp
    end
  end

  def convert_to_card
    lines.each do |line|
      cards << Card.new(*line.split(","))
    end
  end
end
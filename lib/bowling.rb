class Bowling
  attr_reader :score
  attr_reader :spare

  def initialize
    @score = 0
  end
  def hit(first, second)
    frame = first + second
    @score += frame
  end
end

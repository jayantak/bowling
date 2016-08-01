class Bowling
  attr_reader :score

  def initialize
    @score = 0
    @spare = false
    @strikeOne = false
    @strikeTwo = false
  end
  def hit(first, second = 0)
    frame = first + second
    frame = frame * (1 + (@spare?1:0) + (@strikeOne?1:0))
    @spare = false
    @strikeOne = @strikeTwo
    @strikeTwo = false
    if (first + second) == 10
      @spare = true
    end
    if first == 10
      @strikeTwo = true
    end
    @score += frame
  end
end

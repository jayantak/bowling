class Bowling
  attr_reader :score
  attr_reader :spare

  def initialize
    @score = 0
    @spare = 0
  end
  def hit(first, second)
    frame = first + second
    frame = frame * (1 + @spare)
    @spare = 0
    if (first + second) == 10
      @spare = 1
    end
    @score += frame
  end
end

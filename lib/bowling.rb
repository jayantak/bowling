class Bowling
  attr_reader :score
  attr_reader :spare

  def initialize
    @score = 0
  end
  def hit(first, second)
    frame = first + second
    if @spare
      frame = frame * 2
      @spare = false
    end
    if (first + second) == 10
      @spare = true
    end
    @score += frame
  end
end

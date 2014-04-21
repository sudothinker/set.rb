class Card
  attr_accessor :color, :shape, :count, :pattern
  PATTERNS = [:solid, :blank, :striped]
  COLORS = [:green, :blue, :red]
  COUNTS = [1, 2, 3]
  SHAPES = [:oval, :triangle, :squigle]

  def initialize(color, shape, count, pattern)
    @color = color
    @shape = shape
    @count = count
    @pattern = pattern
  end

  def to_s
    return "#{@count} #{@color} #{@pattern} #{@shape}"
  end
end
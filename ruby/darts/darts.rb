class Darts
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def score
    case radius
    when 0..1 then 10
    when 1..5 then 5
    when 5..10 then 1
    else 0
    end
  end

  private

  def radius
    Math.sqrt(x * x + y * y)
  end
end

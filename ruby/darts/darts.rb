class Darts
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def score
    scores.find do |range, _|
      range.cover?(distance_to_the_center)
    end[1]
  end

  private

  def scores
    {
      0.0..1.0 => 10,
      1.0..5.0 => 5,
      5.0..10.0 => 1,
      10.0..1.0/0 => 0,
    }
  end

  def distance_to_the_center
    Math.sqrt(x * x + y * y)
  end
end

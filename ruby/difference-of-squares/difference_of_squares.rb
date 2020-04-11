class Squares
  attr_reader :range_of_numbers
  def initialize(number)
    @range_of_numbers = 1..number
  end

  def square_of_sum
    range_of_numbers.sum ** 2
  end

  def sum_of_squares
    range_of_numbers.map { |value| value ** 2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

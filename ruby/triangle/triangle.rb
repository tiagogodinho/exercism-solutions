class Triangle
  attr_reader :sides
  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    return false if invalid?

    number_of_sides_with_the_same_size == 1
  end

  def isosceles?
    return false if invalid?

    number_of_sides_with_the_same_size.between?(1, 2)
  end

  def scalene?
    return false if invalid?

    number_of_sides_with_the_same_size == 3
  end

  private

  def invalid?
    any_side_with_length_zero? || violates_triangle_inequality?
  end

  def any_side_with_length_zero?
    sides.any?(&:zero?)
  end

  def violates_triangle_inequality?
    a, b, c = sides
    a + b <= c || a + c <= b || b + c <= a
  end

  def number_of_sides_with_the_same_size
    sides.uniq.size
  end
end

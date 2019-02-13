class Year
  attr_reader :number

  def self.leap?(number)
    new(number).leap?
  end

  def initialize(number)
    @number = number
  end

  def leap?
    divisible_by(4) && !divisible_by(100) || divisible_by(400)
  end

  private

  def divisible_by(divisor)
    (number % divisor).zero?
  end
end

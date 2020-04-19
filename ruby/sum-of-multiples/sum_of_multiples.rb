class SumOfMultiples
  attr_reader :numbers
  def initialize(*numbers)
    @numbers = numbers
  end

  def to(limit)
    (1...limit).sum do |index|
      multiple?(index) ? index : 0
    end
  end

  private

  def multiple?(index)
    numbers.any? do |n|
      (index % n).zero?
    end
  end
end

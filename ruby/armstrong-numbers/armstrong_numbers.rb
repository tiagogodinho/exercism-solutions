class ArmstrongNumbers
  def self.include?(number)
    exponent = number.digits.size

    number.digits.sum { |v| v**exponent } == number
  end
end

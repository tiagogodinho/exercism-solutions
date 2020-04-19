class Series
  attr_reader :input
  def initialize(input)
    @input = input
  end

  def slices(size)
    raise ArgumentError if size > input.length

    limit = input.length - size

    (0..limit).map do |value|
      input.slice(value, size)
    end
  end
end

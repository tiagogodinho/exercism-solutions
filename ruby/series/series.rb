class Series
  attr_reader :input
  def initialize(input)
    @input = input
  end

  def slices(size)
    raise ArgumentError if size > input.length

    input.chars.each_cons(size).map(&:join)
  end
end

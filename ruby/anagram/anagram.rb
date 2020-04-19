class Anagram
  attr_reader :input
  def initialize(input)
    @input = input
  end

  def match(words)
    words.select do |word|
      next if word.downcase == input.downcase

      word.downcase.chars.sort == input.downcase.chars.sort
    end
  end
end

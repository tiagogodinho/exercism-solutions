class Phrase
  attr_reader :words
  def initialize(input)
    @words = input.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    words.tally
  end
end

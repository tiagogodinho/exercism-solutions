class Phrase
  attr_reader :words
  def initialize(input)
    @words = input.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    words.each_with_object(Hash.new(0)) do |word, list|
      list[word] += 1
    end
  end
end

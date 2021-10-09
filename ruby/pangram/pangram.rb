class Pangram
  ALPHABET = ("a".."z").freeze

  def self.pangram?(sentence)
    sentence_treated = sentence.downcase
    ALPHABET.all? { |letter| sentence_treated.include?(letter) }
  end
end

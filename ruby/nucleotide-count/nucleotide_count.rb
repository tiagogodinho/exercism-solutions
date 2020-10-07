class Nucleotide
  def self.from_dna(strand)
    raise ArgumentError if strand.match?(/[^AGCT]/)
    new(strand)
  end

  attr_reader :nucleotides

  def initialize(strand)
    @nucleotides = { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }

    strand.each_char do |char|
      nucleotides[char] += 1
    end
  end

  def count(nucleotide)
    nucleotides[nucleotide]
  end

  def histogram
    nucleotides
  end
end

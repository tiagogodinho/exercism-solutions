class Complement
  DNA = "GCTA"
  RNA = "CGAU"

  def self.of_dna(nucleotides)
    nucleotides.tr(DNA, RNA)
  end
end

class Transpose
  def self.transpose(input)
    matrix = input.each_line(chomp: true).map(&:chars)

    longest_line = matrix.map(&:length).max

    equalized_matrix = matrix.map do |row|
      difference = longest_line - row.length
      difference.times { row.push(nil) }
      row
    end

    transposed = equalized_matrix.transpose

    no_trailing_nils = transposed.map { |row| row.reverse.drop_while(&:nil?).reverse }

    correctly_padded = no_trailing_nils.map { |row| row.map { |c| c.nil? ? ' ' : c } }

    correctly_padded.map(&:join).join("\n")
  end
end

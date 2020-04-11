class Matrix
  attr_reader :string
  def initialize(string)
    @string = string
  end

  def rows
    string.split("\n").map { |row| row.split(' ').map(&:to_i) }
  end

  def columns
    number_of_columns = rows[0].length
    number_of_rows = rows.length

    number_of_columns.times.map do |j|
      number_of_rows.times.map do |i|
        rows[i][j]
      end
    end
  end
end

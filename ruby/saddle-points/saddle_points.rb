class Matrix
  attr_reader :rows, :columns
  def initialize(input)
    @rows = extract_rows(input)
    @columns = extract_columns(rows)
  end

  def saddle_points
    rows.each_with_index.with_object([]) do |(row, i), result|
      greatest_row_element = row.max

      row.each_with_index do |value, j|
        result.push([i, j]) if value == greatest_row_element &&
                               value == columns[j].min
      end
    end
  end

  private

  def extract_rows(input)
    input.each_line.map do |row|
      row.split.map(&:to_i)
    end
  end

  def extract_columns(rows)
    rows.transpose
  end
end

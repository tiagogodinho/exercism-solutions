class Matrix
  attr_reader :rows, :columns
  def initialize(input)
    @rows = extract_rows(input)
    @columns = extract_columns(rows)
  end

  def saddle_points
    rows_indexes & columns_indexes
  end

  private

  def rows_indexes
    indexes = []

    rows.each_with_index do |row, i|
      greatest = row.max

      row.each_with_index do |value, j|
        indexes.push([i, j]) if value == greatest
      end
    end

    indexes
  end

  def columns_indexes
    indexes = []

    columns.each_with_index do |column, i|
      lowest = column.min

      column.each_with_index do |value, j|
        indexes.push([j, i]) if value == lowest
      end
    end

    indexes
  end

  def extract_rows(input)
    input.each_line.map do |row|
      row.split.map(&:to_i)
    end
  end

  def extract_columns(rows)
    rows.transpose
  end
end

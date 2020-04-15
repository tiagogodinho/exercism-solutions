class ResistorColorDuo
  COLORS_VALUES = %w(
    black
    brown
    red
    orange
    yellow
    green
    blue
    violet
    grey
    white
  )

  def self.value(colors)
    colors.take(2).map { |color| COLORS_VALUES.index(color) }.join.to_i
  end
end

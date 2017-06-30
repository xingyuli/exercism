class Matrix

  def initialize(str)
    @matrix = str.split(/\n/).each_with_object([]) { |row_str, m|
      m << row_str.strip.split(/ /).map(&:to_i)
    }
  end

  def rows
    # do not expose external state
    @matrix.dup
  end

  def columns
    @matrix.transpose
  end

  def saddle_points
    rows.each_with_index.map { |row, row_index|
      max_in_row = row.max

      row.each_with_index
          .find_all { |cell_value, column_index| cell_value == max_in_row && cell_value == columns[column_index].min }
          .map { |_, column_index| [ row_index, column_index ] }

    }.flatten(level = 1)
  end

end
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
    return [] if @matrix.empty?

    col_size = @matrix[0].length

    (0...col_size).each_with_object([]) { |col_index, matrix|

      matrix << @matrix.each_with_object([]) { |row, column|
        column << row[col_index]
      }

    }
  end

end
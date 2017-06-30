class Hexadecimal

  ENCODING_TABLE = {
      '0': 0,
      '1': 1,
      '2': 2,
      '3': 3,
      '4': 4,
      '5': 5,
      '6': 6,
      '7': 7,
      '8': 8,
      '9': 9,
      'A': 10,
      'B': 11,
      'C': 12,
      'D': 13,
      'E': 14,
      'F': 15
  }

  def initialize(str)
    @str = str.upcase
  end

  def to_decimal
    return 0 unless @str =~ Regexp.new("^[#{ENCODING_TABLE.keys.join}]+$")
    @str.chars
        .reverse
        .each_with_index
        .map { |hex, index| ENCODING_TABLE[hex.to_sym] * 16**index  }
        .sum
  end

end
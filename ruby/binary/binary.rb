class Binary
  def self.to_decimal(binary_str)
    raise ArgumentError unless binary_str =~ /^[01]+$/
    binary_str.reverse.chars.each_with_index
        .reject { |bit, _| bit == '0' }
        .map { |_, i| 2 ** i }
        .sum
  end
end

module BookKeeping
  VERSION = 3
end

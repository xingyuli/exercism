class Trinary

  def initialize(trinary_str)
    @str = trinary_str.gsub(/\n/,'')
  end

  def to_decimal
    return 0 unless @str =~ /^[012]+$/m
    @str.reverse.chars.each_with_index
        .reject { |bit, _| bit == '0' }
        .map { |bit, i| bit.to_i * 3**i }
        .sum
  end

end

module BookKeeping
  VERSION = 1
end

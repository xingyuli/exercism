class Hamming
  def self.compute(a, b)
    raise ArgumentError if a.length != b.length
    pairs = a.each_char.to_a.zip(b.each_char.to_a)
    pairs.find_all { |l, r| l != r }.length
  end
end

module BookKeeping
  VERSION = 3
end

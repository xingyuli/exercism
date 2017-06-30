class Grains

  def self.square(number)
    raise ArgumentError unless VALID_RANGE.include? number
    1 << (number-1)
  end

  def self.total
    VALID_RANGE.reduce(0) { |acc,n| acc += square n }
  end

  private

  VALID_RANGE = 1..64

end

module BookKeeping
  VERSION = 1
end
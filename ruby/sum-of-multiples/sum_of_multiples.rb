class SumOfMultiples

  def initialize(*multiples)
    @multiples = multiples || []
  end

  def to(limit_exclusive)
    return 0 if @multiples.empty?

    (@multiples[0]...limit_exclusive).find_all { |it|
      is_multiplier_of? it
    }.sum
  end

  private

  def is_multiplier_of?(number)
    @multiples.find { |it| number % it == 0 }
  end

end

module BookKeeping
  VERSION = 1
end
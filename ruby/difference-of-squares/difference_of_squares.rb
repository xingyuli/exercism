class Squares
  def initialize(upto)
    @upto = upto
  end
  def square_of_sum
    (1..@upto).sum ** 2
  end
  def sum_of_squares
    (1..@upto).map { |i| i**2 }.sum
  end
  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
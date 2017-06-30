class Position

  @@x_range, @@y_range = 0..7, 0..7

  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
    raise ArgumentError unless valid?
  end

  private

  def valid?
    @@x_range.include?(@x) && @@y_range.include?(@y)
  end

end

class Queens

  def initialize(white: nil, black: nil)
    @white = Position.new(*white) unless white.nil?
    @black = Position.new(*black) unless black.nil?
  end

  def attack?
    raise RuntimeError if @white.nil? || @black.nil?
    same_row? || same_column? || diagonal?
  end

  private

  def same_row?
    dx.zero?
  end

  def same_column?
    dy.zero?
  end

  def diagonal?
    dx.abs == dy.abs
  end

  def dx
    @white.x - @black.x
  end

  def dy
    @white.y - @black.y
  end

end

module BookKeeping
  VERSION = 2
end
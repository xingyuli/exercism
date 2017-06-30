class Triangle

  def initialize(edges)
    @edges = edges
  end

  def equilateral?
    return false unless edges_valid?
    edges_with_length(@edges.first).length == 3
  end

  def isosceles?
    return false unless edges_valid?
    @edges.any? { |edge| edges_with_length(edge).length >= 2 }
  end

  def scalene?
    return false unless edges_valid?
    @edges.all? { |edge| edges_with_length(edge).length == 1 }
  end

  private

  def edges_valid?
    return false if @edges.find { |edge| edge <= 0 }

    edge_lengths = @edges.dup
    3.times {
      return false unless edge_lengths[0] + edge_lengths[1] >= edge_lengths[2]
      edge_lengths.rotate!
    }
    true
  end

  def edges_with_length(length)
    @edges.find_all { |edge| edge == length }
  end

end

module BookKeeping
  VERSION = 1
end
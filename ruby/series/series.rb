class Series
  def initialize(number_in_str)
    @text = number_in_str
  end
  def slices(length)
    [].each_cons

    raise ArgumentError if length > @text.length
    count_of_possible_slices = @text.length - length
    (0..count_of_possible_slices).map { |offset| @text[offset...offset+length] }
  end
end
class Array
  def accumulate
    return to_enum unless block_given?

    result = []
    each do |el|
      result << (yield el)
    end
    result
  end
end

module BookKeeping
  VERSION = 1
end
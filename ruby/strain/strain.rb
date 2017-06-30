module Enumerable
  def keep
    return to_enum unless block_given?
    result = []
    each do |it|
      result << it if yield it
    end
    result
  end

  def discard
    keep { |it| ! yield it }
  end
end

class Bracket

  attr_reader :value, :opposite

  def initialize(value, open, opposite)
    @value = value
    @opposite = opposite
    @open = open
  end

  def open?
    @open
  end

  def close?
    !@open
  end

  def matches?(other)
    other.kind_of?(Bracket) && @opposite == other.value
  end

  def self.from(char)
    case char
      when '{'
        Bracket.new(char, true, '}')
      when '}'
        Bracket.new(char, false, '{')
      when '['
        Bracket.new(char, true, ']')
      when ']'
        Bracket.new(char, false, '[')
      when '('
        Bracket.new(char, true, ')')
      when ')'
        Bracket.new(char, false, '(')
      else
        nil
    end
  end
end

class Brackets

  def self.paired?(str)
    stack = []

    str.each_char { |char|
      bracket = Bracket.from(char)
      unless bracket.nil?
        if bracket.open?
          stack << bracket
        else
          return false unless bracket.matches?(stack.pop)
        end
      end
    }

    stack.empty?
  end

end

module BookKeeping
  VERSION = 4
end
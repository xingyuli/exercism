class Scrabble

  def initialize(input)
    @input = if input !~ /^\w+$/
               ''
             else
               input
             end
  end

  def score
    @input.upcase.chars.map { |char| value_of_score char }.sum
  end

  def self.score(input)
    Scrabble.new(input).score
  end

  private

  def value_of_score(char)
    case char
      when 'A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'
        1
      when 'D', 'G'
        2
      when 'B', 'C', 'M', 'P'
        3
      when 'F', 'H', 'V', 'W', 'Y'
        4
      when 'K'
        5
      when 'J', 'X'
        8
      when 'Q', 'Z'
        10
      else
        0
    end
  end

end

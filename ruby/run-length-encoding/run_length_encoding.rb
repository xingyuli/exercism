class CharHandler

  attr_accessor :char, :count

  def initialize(char, count)
    @char = char
    @count = count
  end

  def expand
    @char * @count
  end

  def self.from_s(str)
    return CharHandler.new('', 1) if str.length == 0
    return CharHandler.new(str, 1) if str.length == 1
    CharHandler.new(str[str.length-1], str[0...str.length-1].to_i)
  end

end

class RunLengthEncoding

  def self.encode(content)
    content.scan(/(([\w\s])\2*)/)
        .map { |match,c| match.length > 1 ? "#{match.length}#{c}" : c }
        .join
  end

  def self.decode(input)
    input.scan(/\d*[\w ]/)
        .map { |token| CharHandler.from_s(token).expand }
        .join
  end

end

module BookKeeping
  VERSION = 3
end

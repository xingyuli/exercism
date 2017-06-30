class String
  def unquote
    if self[0] == '\'' && self[length-1] == '\''
      self[1...length-1]
    else
      self
    end
  end
end

class Phrase
  def initialize(val)
    @val = val
  end
  def word_count
    @val.downcase.split(/[^\w_]+/)
      .map { |it| it.unquote }
      .reduce(Hash.new(0)) { |dict, word| dict[word] += 1; dict }

    dict = {}
    @val.downcase.split(/[^\w_']+/).each { |word|
      key = word.unquote
      dict[key] = (dict[key]||0) + 1
    }
    dict
  end
end

module BookKeeping
  VERSION = 1
end
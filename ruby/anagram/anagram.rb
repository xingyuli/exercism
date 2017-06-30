class Anagram

  def initialize(word)
    @word = word
  end

  def match(words)
    sorted_word = @word.downcase.chars.sort.join
    words
        .reject { |candidate| candidate.casecmp? @word }
        .find_all { |candidate| candidate.downcase.chars.sort.join.casecmp? sorted_word }
  end

end

module BookKeeping
  VERSION = 2
end

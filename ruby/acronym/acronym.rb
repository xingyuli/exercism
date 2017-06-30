class Acronym
  def self.abbreviate(phrase)
    phrase
        .split(/[\s,-]+/)
        .map { |word| word[0].upcase }
        .join
  end
end

module BookKeeping
  VERSION = 4
end
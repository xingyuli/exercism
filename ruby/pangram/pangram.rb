class Pangram
  def self.pangram?(sentence)
    required = ('a'..'z').to_a
    sentence.downcase.chars.each { |c| required.delete(c) }
    required.empty?
  end
end

module BookKeeping
  VERSION = 4
end
class Bob

  class Mood
    attr_reader :answer

    private def initialize(answer)
      @answer = answer
    end

    QUESTION = Mood.new('Sure.')
    YELL = Mood.new('Whoa, chill out!')
    SENTENCE = Mood.new('Whatever.')
    NOTHING = Mood.new('Fine. Be that way!')
  end

  def self.hey(remark)
    infer_mood(remark.strip.gsub(/[^\s\w,!?]/, '')).answer
  end

  private

  def self.infer_mood(remark)
    if remark =~ /^[\sA-Z0-9,!?]+$/ && remark !~ /^[\s\d,!?]+$/
      Mood::YELL
    elsif remark[remark.length-1] == '?'
      Mood::QUESTION
    elsif remark.split(/\n/).all? { |it| it =~ /^\s*$/ }
      Mood::NOTHING
    else
      Mood::SENTENCE
    end
  end

end

module BookKeeping
  VERSION = 1
end

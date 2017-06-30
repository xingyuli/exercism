class Robot

  # name has 5 characters, so it is finite!
  @@possible_names = 'AA000'..'ZZ999'

  @@names = []

  attr_reader :name

  def initialize
    @name = self.class.next_name
  end

  def reset
    @name = self.class.next_name
  end

  def self.forget
    # reset the name generator
    @@names = @@possible_names.to_a.shuffle
  end

  private

  def self.next_name
    @@names.pop
  end

end

module BookKeeping
  VERSION = 3
end
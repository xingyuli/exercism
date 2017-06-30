class Clock

  DAY_IN_MINUTES = 60 * 24
  HOUR_IN_MINUTES = 60

  attr_reader :minutes

  def initialize(minutes)
    @minutes = minutes
  end

  def +(change)
    @minutes = @minutes + change
    self
  end

  def ==(other)
    other.kind_of?(Clock) && @minutes % DAY_IN_MINUTES == other.minutes % DAY_IN_MINUTES
  end

  def to_s
    '%02d:%02d' % [hour, minute]
  end

  def self.at(hour, minute)
    Clock.new(hour * HOUR_IN_MINUTES + minute)
  end

  private

  def hour
    (@minutes / HOUR_IN_MINUTES) % 24
  end

  def minute
    @minutes % HOUR_IN_MINUTES
  end

end

module BookKeeping
  VERSION = 2
end

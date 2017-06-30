class SpaceAge

  EARTH_YEAR_IN_SECONDS = 31557600

  def initialize(seconds)
    @seconds = seconds
  end

  period_ratios = { :earth   => 1,
                    :mercury => 0.2408467,
                    :venus   => 0.61519726,
                    :mars    => 1.8808158,
                    :jupiter => 11.862615,
                    :saturn  => 29.447498,
                    :uranus  => 84.016846,
                    :neptune => 164.79132 }

  period_ratios.each { |planet, ratio|
    define_method(:"on_#{planet}") {
      @seconds.to_f / (EARTH_YEAR_IN_SECONDS * ratio)
    }
  }

end

module BookKeeping
  VERSION = 1
end

class Raindrops
  def self.convert(number)
    result = ''
    result += 'Pling' if number % 3 == 0
    result += 'Plang' if number % 5 == 0
    result += 'Plong' if number % 7 == 0

    if result.empty?
      number.to_s
    else
      result
    end
  end
end

module BookKeeping
  VERSION = 3
end
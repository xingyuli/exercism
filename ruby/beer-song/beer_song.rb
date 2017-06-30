class BeerSong

  def verse(amount)
    verses(amount, amount)
  end

  def verses(from, to)
    produce(from.downto to)
  end

  private

  def produce(range)
    range.map { |value| lyric_of value }.join("\n")
  end

  def lyric_of(count)
    if count > 1
      <<-TEXT
#{bottles_of count} of beer on the wall, #{bottles_of count} of beer.
Take one down and pass it around, #{bottles_of count-1} of beer on the wall.
TEXT
    elsif count == 1
      <<-TEXT
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
TEXT
    else
      <<-TEXT
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
TEXT
    end
  end

  def bottles_of(count)
    if count > 1
      "#{count} bottles"
    else
      '1 bottle'
    end
  end

end

module BookKeeping
  VERSION = 3
end
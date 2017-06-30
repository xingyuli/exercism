class ETL
  def self.transform(score_table)
    score_table
        .map { |score, letters|
          letters.reduce({}) { |m, letter| m[letter.downcase] = score; m }
        }
        .reduce({}, &:merge)
  end
end

module BookKeeping
  VERSION = 1
end

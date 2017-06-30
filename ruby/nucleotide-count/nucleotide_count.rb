class Nucleotide

  def initialize(sequence)
    @sequence = sequence
  end

  def count(which)
    @sequence.chars.select { |char| char == which }.length
  end

  def histogram
    table = {}
    %w(A T C G).each { |which| table[which] = count(which) }
    table
  end

  def self.from_dna(sequence)
    raise ArgumentError unless sequence =~ /^[ATCG]*$/
    new(sequence)
  end

end
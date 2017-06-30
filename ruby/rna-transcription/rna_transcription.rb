class Complement

  def self.of_dna(dna)
    "abc".delete("c")
    "abc".tr
    return '' if dna !~ /^[GCTA]+$/
    dna.chars.collect { |c| dna_to_rna c }.join('')
  end

  private

  def self.dna_to_rna(val)
    case val
      when 'G' then 'C'
      when 'C' then 'G'
      when 'T' then 'A'
      when 'A' then 'U'
      else raise ArgumentError
    end
  end

end

module BookKeeping
  VERSION = 4
end
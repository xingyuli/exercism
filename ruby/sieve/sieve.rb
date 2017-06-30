class Sieve

  def initialize(limit)
    @limit = limit
    @range = if limit >= 2
               2...limit.map { |i| [i, -1] }
             else
               []
             end
  end

  def primes
    candidate = peek_candidate
    candidate[1] = 1
  end

  private

  def peek_candidate
    @range.find { |it| it[1] == -1 }
  end

end
class School

  def initialize
    @roster = Hash.new { |hash, key| hash[key] = [] }
  end

  def add(name, grade)
    @roster[grade] << name
  end

  def students(grade)
    @roster[grade].sort
  end

  def students_by_grade
    @roster.keys.sort.map { |grade| { grade: grade, students: students(grade) } }
  end

end

module BookKeeping
  VERSION = 3
end

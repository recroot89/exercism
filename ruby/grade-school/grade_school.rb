# frozen_string_literal: true

class School
  def initialize
    @students = []
  end

  def add(student, grade)
    @students << [student, grade]
  end

  def students(grade)
    @students.select { |student| student.last == grade }.map(&:first).sort
  end

  def students_by_grade
    grades = @students.map(&:last).sort.uniq
    grades.reduce([]) do |acc, grade|
      acc << { grade: grade, students: students(grade) }
    end
  end
end

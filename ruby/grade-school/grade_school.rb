# frozen_string_literal: true

# Write your code for the 'Grade School' exercise in this file. Make the tests in
# `grade_school_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/grade-school` directory.

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

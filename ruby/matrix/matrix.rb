# frozen_string_literal: true

# Write your code for the 'Matrix' exercise in this file. Make the tests in
# `matrix_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/matrix` directory.

class Matrix
  attr_reader :matrix

  def initialize(raw_data)
    @matrix = raw_data.split(/\n/)
  end

  def rows
    matrix.map { |m| m.split(' ').map(&:to_i) }
  end

  def columns
    (0..matrix.size - 1).reduce([]) do |acc, index|
      new_col = rows.map { |r| r[index] }
      acc.append(new_col)
    end
  end
end

# frozen_string_literal: true

# Write your code for the 'Saddle Points' exercise in this file. Make the tests in
# `saddle_points_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/saddle-points` directory.

class Matrix
  attr_reader :matrix

  def initialize(raw_data)
    @matrix = raw_data.split(/\n/)
  end

  def rows
    matrix.map { |m| m.split.map(&:to_i) }
  end

  def columns
    (0..matrix.size - 1).reduce([]) do |acc, index|
      acc.append(rows.map { |r| r[index] })
    end
  end

  def saddle_points
    row_maximums = matrix_extremums_with_points(rows, :max)
    column_minimums = matrix_extremums_with_points(columns, :min, true)

    (row_maximums & column_minimums).map { |(_, x, y)| [x, y] }
  end

  private

  def matrix_extremums_with_points(matrix_elements, extremum, reverse = false)
    matrix_elements.map.with_index do |elements, x|
      target_element = elements.send(extremum)
      elements.map.with_index { |element, y| [element] + (reverse ? [y, x] : [x, y]) }
              .select { |el,| el == target_element }
    end.flatten(1)
  end
end

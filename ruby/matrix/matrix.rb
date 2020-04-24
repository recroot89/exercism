# frozen_string_literal: true

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

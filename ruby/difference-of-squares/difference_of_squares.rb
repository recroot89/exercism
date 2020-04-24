# frozen_string_literal: true

class Squares
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def square_of_sum
    (1..number).sum**2
  end

  def sum_of_squares
    (1..number).sum(0) { |num| num**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

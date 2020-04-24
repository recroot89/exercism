# frozen_string_literal: true

class SumOfMultiples
  attr_reader :factors

  def initialize(*factors)
    @factors = factors
  end

  def to(threshold)
    (1..threshold - 1).reduce(0) do |acc, number|
      factors.any? { |f| number % f == 0 } ? acc + number : acc
    end
  end
end

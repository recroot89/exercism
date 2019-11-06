# frozen_string_literal: true

# Write your code for the 'Sum Of Multiples' exercise in this file. Make the tests in
# `sum_of_multiples_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/sum-of-multiples` directory.

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

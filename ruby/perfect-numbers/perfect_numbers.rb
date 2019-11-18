# frozen_string_literal: true

# Write your code for the 'Perfect Numbers' exercise in this file. Make the tests in
# `perfect_numbers_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/perfect-numbers` directory.

class PerfectNumber
  def self.classify(number)
    raise RuntimeError if number.negative?

    number_factors_sum = (1..number / 2).sum { |n| (number % n).zero? ? n : 0 }
    if number_factors_sum < number
      'deficient'
    elsif number_factors_sum > number
      'abundant'
    else
      'perfect'
    end
  end
end

# frozen_string_literal: true

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

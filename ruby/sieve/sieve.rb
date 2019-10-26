# frozen_string_literal: true

# Write your code for the 'Sieve' exercise in this file. Make the tests in
# `sieve_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/sieve` directory.

class Sieve
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def primes
    return [] if number < 2

    (2..number).reduce([]) { |acc, num| prime?(num) ? acc << num : acc }
  end

  private

  def prime?(number)
    (2..number / 2).each do |num|
      return false if (number % num).zero?
    end
    true
  end
end

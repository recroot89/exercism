# frozen_string_literal: true

# Write your code for the 'Nth Prime' exercise in this file. Make the tests in
# `nth_prime_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/nth-prime` directory.

class Prime
  class << self
    def nth(number)
      raise ArgumentError if number < 1

      primes = Enumerator.new do |acc|
        n = 2
        loop do
          acc << n if prime?(n)
          n += 1
        end
      end

      primes.take(number).last
    end

    def prime?(number)
      (2..number / 2).each do |num|
        return false if (number % num).zero?
      end
      true
    end
  end
end

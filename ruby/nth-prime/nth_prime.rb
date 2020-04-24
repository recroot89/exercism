# frozen_string_literal: true

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

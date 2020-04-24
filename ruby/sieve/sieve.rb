# frozen_string_literal: true

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

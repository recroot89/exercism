# frozen_string_literal: true

class Grains
  class << self
    def square(square_number)
      raise ArgumentError if square_number < 1 || square_number > 64

      2**(square_number - 1)
    end

    def total
      (0..63).reduce(0) { |acc, x| acc + 2**x }
    end
  end
end

# frozen_string_literal: true

module BookKeeping
  VERSION = 3
end

class Hamming
  class << self
    def compute(first_strand, second_strand)
      return 0 if first_strand.length.zero?
      raise ArgumentError if first_strand.length != second_strand.length

      first_strand.split('').each_with_index.inject(0) do |acc, (acid, index)|
        acid != second_strand[index] ? acc + 1 : acc
      end
    end
  end
end

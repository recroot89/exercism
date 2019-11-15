# frozen_string_literal: true

# Write your code for the 'Nucleotide Count' exercise in this file. Make the tests in
# `nucleotide_count_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/nucleotide-count` directory.

class Nucleotide
  class << self
    def from_dna(strand)
      strand.each_char { |c| raise ArgumentError unless %w[A T C G].include?(c) }
      @strand = strand.chars
      self
    end

    def count(nucleotide)
      @strand.count(nucleotide)
    end

    def histogram
      basic_histogram = { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }
      return basic_histogram if @strand.empty?

      basic_histogram.merge @strand.group_by(&:itself).transform_values(&:count)
    end
  end
end

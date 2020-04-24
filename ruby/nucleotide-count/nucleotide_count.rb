# frozen_string_literal: true

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

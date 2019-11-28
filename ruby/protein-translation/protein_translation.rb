# frozen_string_literal: true

# Write your code for the 'Protein Translation' exercise in this file. Make the tests in
# `protein_translation_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/protein-translation` directory.

class InvalidCodonError < StandardError
  def initialize
    super
  end
end

class Translation
  CODON_PROTEIN_TABLE = {
    'AUG' => 'Methionine',
    'UUU' => 'Phenylalanine',
    'UUC' => 'Phenylalanine',
    'UUA' => 'Leucine',
    'UUG' => 'Leucine',
    'UCU' => 'Serine',
    'UCC' => 'Serine',
    'UCA' => 'Serine',
    'UCG' => 'Serine',
    'UAU' => 'Tyrosine',
    'UAC' => 'Tyrosine',
    'UGU' => 'Cysteine',
    'UGC' => 'Cysteine',
    'UGG' => 'Tryptophan'
  }.freeze
  STOP_CODONS = %w[UAA UAG UGA].freeze
  VALID_CODONS = CODON_PROTEIN_TABLE.keys.concat(STOP_CODONS).freeze

  class << self
    def of_codon(codon)
      raise InvalidCodonError unless VALID_CODONS.include?(codon)

      STOP_CODONS.include?(codon) ? 'STOP' : CODON_PROTEIN_TABLE[codon]
    end

    def of_rna(strand)
      codons = strand.scan(/.{1,3}/)
      return 'STOP' if STOP_CODONS.include?(codons.first)

      proteins = codons.map { |c| of_codon(c) }
      stop_index = proteins.index('STOP').nil? ? -1 : proteins.index('STOP') - 1
      proteins.slice(0..stop_index)
    end
  end
end

# frozen_string_literal: true

class Complement
  DNA_TO_RNA_TABLE = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }.freeze

  def self.of_dna(strand)
    strand.split('').reduce('') { |acc, acid| acc + DNA_TO_RNA_TABLE[acid] }
  end
end

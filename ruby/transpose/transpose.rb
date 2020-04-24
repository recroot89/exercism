# frozen_string_literal: true

class Transpose
  class << self
    def transpose(input)
      return '' if input.empty?

      matrix = input.split(/\n/).map(&:chars)
      max_index_rows = matrix.each.max_by(&:size).size - 1
      square_matrix = matrix.reduce([]) { |acc, m| acc.append(m.dup.fill(nil, m.size..max_index_rows)) }

      (0..max_index_rows).reduce([]) do |acc, index|
        row = square_matrix.map { |sm_row| sm_row[index] }
        acc.append(row.include?(nil) ? replace_nil_in_row(row).join : row.join)
      end.join("\n")
    end

    private

    def replace_nil_in_row(row)
      row.reverse
         .drop_while(&:nil?)
         .reverse
         .map { |char| char.nil? ? ' ' : char }
    end
  end
end

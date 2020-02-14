# frozen_string_literal: true

class Crypto
  attr_reader :formatted_text, :col, :row

  def initialize(plaintext)
    @origin_text = plaintext
    text = plaintext.strip.gsub(/\W/, '').downcase
    @col, @row = normalized_matrix_params(text.size).values_at(:col, :row)
    formatted_text_size = @col * @row
    @formatted_text = text.ljust(formatted_text_size, ' ')
  end

  def ciphertext
    return '' if formatted_text.empty?

    formatted_text.split('')
                  .each_slice(row)
                  .to_a
                  .transpose
                  .map(&:join)
                  .join(' ')
  end

  private

  def normalized_matrix_params(number)
    number_root = Math.sqrt(number)
    base = number_root.to_i
    fractional_part = number_root % 1
    return { col: base, row: base } if fractional_part.zero?

    {
      col: base * (base + 1) < number ? base + 1 : base,
      row: base + 1
    }
  end
end

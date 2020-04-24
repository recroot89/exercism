# frozen_string_literal: true

class Luhn
  class << self
    def valid?(code)
      code_without_spaces = code.gsub(/\s+/, '')
      if code_without_spaces.length <= 1 || code_without_spaces.scan(/\D/).any?
        return false
      end

      numbers = code_without_spaces.split('').map(&:to_i)
      (double_every_second_digit(numbers).sum % 10).zero?
    end

    private

    def double_every_second_digit(numbers)
      numbers.reverse.map.with_index do |digit, index|
        double = digit * 2
        if index.odd?
          double >= 10 ? double.to_s.split('').map(&:to_i).sum : double
        else
          digit
        end
      end
    end
  end
end

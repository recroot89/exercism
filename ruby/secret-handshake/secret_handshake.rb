# frozen_string_literal: true

class SecretHandshake
  COMMANDS = ['wink', 'double blink', 'close your eyes', 'jump', 'reverse'].freeze

  def initialize(number)
    @binary_digits = to_binary_string(number).split('').map(&:to_i)
  end

  def commands
    @binary_digits.reverse.each_with_object([]).with_index do |(digit, acc), index|
      next unless digit == 1

      COMMANDS[index] == 'reverse' ? acc.reverse! : acc << COMMANDS[index]
    end
  end

  private

  def to_binary_string(number)
    return '' unless number.is_a?(Integer)
    return '' if number <= 0

    iter = lambda do |acc, num|
      return acc if num.zero?

      iter.call(acc << (num % 2), num / 2)
    end

    iter.call([], number).reverse.join
  end
end

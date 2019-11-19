# frozen_string_literal: true

# Write your code for the 'Run Length Encoding' exercise in this file. Make the tests in
# `run_length_encoding_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/run-length-encoding` directory.

class RunLengthEncoding
  class << self
    def encode(string)
      return '' if string.length.zero?

      iter = lambda do |acc, chars, char, char_count|
        return acc if char.nil?

        new_char, *rest_chars = chars
        if new_char == char
          iter.call(acc, rest_chars, char, char_count + 1)
        else
          new_acc = acc + (char_count == 1 ? char : "#{char_count}#{char}")
          iter.call(new_acc, rest_chars, new_char, 1)
        end
      end
      chars = string.split('')
      iter.call('', chars, '', 1)
    end

    def decode(string)
      return '' if string.length.zero?

      iter = lambda do |acc, chars, count|
        return acc if chars.empty?

        new_char, *rest_chars = chars

        if new_char.to_i.to_s == new_char
          iter.call(acc, rest_chars, count + new_char)
        else
          new_acc = acc + new_char * (count.empty? ? 1 : count.to_i)
          iter.call(new_acc, rest_chars, '')
        end
      end

      chars = string.split('')
      iter.call('', chars, '')
    end
  end
end

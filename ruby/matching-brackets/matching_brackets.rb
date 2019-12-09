# frozen_string_literal: true

# Write your code for the 'Matching Brackets' exercise in this file. Make the tests in
# `matching_brackets_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/matching-brackets` directory.

class Brackets
  OPEN_BRACKETS = '({['
  CLOSE_BRACKETS = ')}]'

  def self.paired?(string)
    bracket_stack = []
    string.chars.each do |char|
      bracket_stack.push(char) if OPEN_BRACKETS.include?(char)
      next unless CLOSE_BRACKETS.include?(char)

      if bracket_stack.empty? || CLOSE_BRACKETS.index(char) != OPEN_BRACKETS.index(bracket_stack.pop)
        return false
      end
    end
    bracket_stack.empty?
  end
end

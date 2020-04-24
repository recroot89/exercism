# frozen_string_literal: true

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

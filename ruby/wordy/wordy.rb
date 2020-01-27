# frozen_string_literal: true

class WordProblem
  OPERANDS = {
    'plus' => '+',
    'minus' => '-',
    'multiplied by' => '*',
    'divided by' => '/'
  }.freeze

  attr_reader :example

  def initialize(example)
    @example = example
  end

  # example.scan(/([^-0-9]+)(-?[0-9]*)/)
  def answer
    unless example.start_with?('What is') && example.end_with?('?')
      raise ArgumentError
    end

    first, *rest = example_elements
    rest.each_with_index.reduce(first.to_i) do |acc, (item, index)|
      next_item = rest[index + 1].to_i
      case item
      when '+'
        acc + next_item
      when '-'
        acc - next_item
      when '*'
        acc * next_item
      when '/'
        acc / next_item
      else
        acc
      end
    end
  end

  private

  def example_elements
    formatted_example = example.delete_prefix('What is ').delete_suffix('?')
    OPERANDS.keys.each_with_object(formatted_example) { |op, str| str.gsub!(op, OPERANDS[op]) }
    raise ArgumentError if formatted_example.match?(/[a-zA-Z]+/)

    formatted_example.split
  end
end

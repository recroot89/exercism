# frozen_string_literal: true

# Write your code for the 'All Your Base' exercise in this file. Make the tests in
# `all_your_base_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/all-your-base` directory.

class BaseConverter
  def self.convert(input_base, digits, output_base)
    if input_base < 2 || output_base < 2 ||
       digits.any?(&:negative?) || digits.any? { |d| d > input_base - 1 }
      raise ArgumentError
    end
    return [0] if digits.empty?

    current_number = digits.reverse.each_with_index.sum do |digit, index|
      digit * input_base**index
    end
    return [0] if current_number.zero?

    iter = lambda do |acc, number|
      return acc if number.zero?

      iter.call(acc << (number % output_base), number / output_base)
    end

    iter.call([], current_number).reverse
  end
end

# frozen_string_literal: true

# Write your code for the 'Flatten Array' exercise in this file. Make the tests in
# `flatten_array_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/flatten-array` directory.

class FlattenArray
  def self.flatten(array)
    return [] if array.empty?

    array.reduce([]) do |acc, element|
      if element.is_a? Array
        acc.append(*flatten(element))
      else
        element.nil? ? acc : acc.append(element)
      end
    end
  end
end

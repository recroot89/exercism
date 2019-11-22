# frozen_string_literal: true

# Write your code for the 'Accumulate' exercise in this file. Make the tests in
# `accumulate_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/accumulate` directory.

class Array
  def accumulate
    return to_enum(:accumulate) unless block_given?

    acc = []
    each do |element|
      acc << yield(element)
    end
    acc
  end
end

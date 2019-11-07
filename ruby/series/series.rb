# frozen_string_literal: true

# Write your code for the 'Series' exercise in this file. Make the tests in
# `series_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/series` directory.

class Series
  attr_reader :number_pairs

  def initialize(numbers_string)
    @number_pairs = numbers_string.split('')
  end

  def slices(chunk_size)
    raise ArgumentError if number_pairs.size < chunk_size

    number_pairs.each_cons(chunk_size).reduce([]) { |acc, pair| acc.append pair.join('') }
  end
end

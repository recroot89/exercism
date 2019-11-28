# frozen_string_literal: true

# Write your code for the 'Binary Search' exercise in this file. Make the tests in
# `binary_search_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/binary-search` directory.

class BinarySearch
  attr_reader :list

  def initialize(array)
    raise ArgumentError unless array.sort == array

    @list = array
  end

  def middle
    list.size / 2
  end

  def search_for(item)
    iter = lambda do |begin_i, end_i|
      raise RuntimeError if begin_i > end_i

      mid_i = begin_i + end_i + 1 / 2
      if list[mid_i] > item
        iter.call(begin_i, mid_i - 1)
      elsif list[mid_i] < item
        iter.call(mid_i + 1, end_i)
      else
        mid_i
      end
    end

    iter.call(0, list.size - 1)
  end
end

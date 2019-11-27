# frozen_string_literal: true

# Write your code for the 'Strain' exercise in this file. Make the tests in
# `strain_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/strain` directory.

class Array
  def keep
    acc = []
    each do |element|
      acc << element if yield element
    end
    acc
  end

  def discard
    acc = []
    each do |element|
      acc << element unless yield element
    end
    acc
  end
end

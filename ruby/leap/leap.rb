# frozen_string_literal: true

# Write your code for the 'Leap' exercise in this file. Make the tests in
# `leap_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/leap` directory.

class Year
  def self.leap?(year)
    return false if (year % 100).zero? && year % 400 != 0

    (year % 4).zero?
  end
end

# frozen_string_literal: true

# Write your code for the 'Pangram' exercise in this file. Make the tests in
# `pangram_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/pangram` directory.
require 'set'

class Pangram
  def self.pangram?(sentence)
    letter_count = sentence.downcase
                           .gsub(/[^a-z]/i, '')
                           .split('')
                           .to_set
                           .count
    letter_count == 26
  end
end

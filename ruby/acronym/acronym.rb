# frozen_string_literal: true

# Write your code for the 'Acronym' exercise in this file. Make the tests in
# `acronym_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/acronym` directory.

class Acronym
  def self.abbreviate(phrase)
    phrase.gsub('-', ' ')
          .split(' ')
          .reduce('') { |acc, word| acc + word[0].upcase }
  end
end

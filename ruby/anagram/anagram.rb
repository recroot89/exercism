# frozen_string_literal: true

# Write your code for the 'Anagram' exercise in this file. Make the tests in
# `anagram_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/anagram` directory.

class Anagram
  attr_reader :sorted_word, :origin_word

  def initialize(origin_word)
    @origin_word = origin_word.downcase
    @sorted_word = @origin_word.chars.sort.join
  end

  def match(words)
    words.select do |word|
      w = word.downcase
      w.chars.sort.join == sorted_word && w != origin_word
    end
  end
end

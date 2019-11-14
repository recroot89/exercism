# frozen_string_literal: true

# Write your code for the 'Word Count' exercise in this file. Make the tests in
# `word_count_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/word-count` directory.

class Phrase
  attr_reader :words

  def initialize(text)
    @words = text.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    words.each_with_object({}) do |word, acc|
      acc.key?(word) ? acc[word] += 1 : acc[word] = 1
    end
    # better solution (not mine)
    # words.group_by(&:itself).transform_values(&:count)
  end
end

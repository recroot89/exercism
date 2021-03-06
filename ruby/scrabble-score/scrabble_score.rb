# frozen_string_literal: true

# Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
# `scrabble_score_test.rb` pass.
#
# To get started with TD'D' => 1, see the `README.md` file in your
# `ruby/scrabble-score` directory.

class Scrabble
  SCORES = {
    'A' => 1,
    'E' => 1,
    'I' => 1,
    'O' => 1,
    'U' => 1,
    'L' => 1,
    'N' => 1,
    'R' => 1,
    'S' => 1,
    'T' => 1,
    'D' => 2,
    'G' => 2,
    'B' => 3,
    'C' => 3,
    'M' => 3,
    'P' => 3,
    'F' => 4,
    'H' => 4,
    'V' => 4,
    'W' => 4,
    'Y' => 4,
    'K' => 5,
    'J' => 8,
    'X' => 8,
    'Q' => 10,
    'Z' => 10
  }.freeze

  attr_reader :word

  def initialize(word)
    @word = word ? word.tr('^A-Za-z', '').upcase : ''
  end

  def score
    word.chars.reduce(0) { |acc, char| acc + SCORES[char] }
  end

  def self.score(word)
    new(word).score
  end
end

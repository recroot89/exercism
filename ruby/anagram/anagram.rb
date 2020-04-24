# frozen_string_literal: true

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

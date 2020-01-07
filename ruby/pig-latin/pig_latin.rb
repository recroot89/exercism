# frozen_string_literal: true

# Write your code for the 'Pig Latin' exercise in this file. Make the tests in
# `pig_latin_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/pig-latin` directory.

class PigLatin
  VOWEL_SOUNDS = %w[a e i o yt xr].freeze

  def self.translate(phrase)
    words = phrase.downcase.split(' ')
    words.map do |word|
      return "#{word}ay" if word.start_with?(*VOWEL_SOUNDS)

      if word.include?('qu')
        a, b = *word.split(/([aeio].*)/)
      elsif word.start_with?('rh') || !word.start_with?('y')
        a, b = *word.split(/([aeiouy].*)/)
      else
        a, b = *word.split(/([aeiou].*)/)
      end

      "#{b}#{a}ay"
    end.join(' ')
  end
end

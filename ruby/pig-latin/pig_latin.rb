# frozen_string_literal: true

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

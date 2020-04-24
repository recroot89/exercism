# frozen_string_literal: true

class Pangram
  def self.pangram?(sentence)
    letter_count = sentence.downcase
                           .gsub(/[^a-z]/i, '')
                           .split('')
                           .uniq
                           .count
    letter_count == 26
  end
end

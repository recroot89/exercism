# frozen_string_literal: true

class Acronym
  def self.abbreviate(phrase)
    phrase.scan(/[\w]+/)
          .reduce('') { |acc, word| acc + word[0] }
          .upcase
  end
end

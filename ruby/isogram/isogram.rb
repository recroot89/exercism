# frozen_string_literal: true

class Isogram
  def self.isogram?(word)
    chars = word.downcase.scan(/[\w]/)
    chars.uniq == chars
  end
end

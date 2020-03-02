# frozen_string_literal: true

class Atbash
  PLAIN = ('a'..'z').to_a.join
  CIPHER = PLAIN.reverse

  class << self
    def encode(plaintext)
      plaintext.strip
               .downcase
               .gsub(/\W/, '')
               .split('')
               .map { |c| PLAIN.include?(c) ? CIPHER[PLAIN.index(c)] : c }
               .each_slice(5)
               .to_a
               .map(&:join)
               .join(' ')
    end

    def decode(ciphertext)
      ciphertext.strip
                .downcase
                .gsub(/\W/, '')
                .split('')
                .map { |c| PLAIN.include?(c) ? PLAIN[CIPHER.index(c)] : c }
                .join
    end
  end
end

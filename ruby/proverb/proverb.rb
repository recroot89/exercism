# frozen_string_literal: true

class Proverb
  attr_reader :proverb_words, :qualifier

  def initialize(*args)
    last_argument = args.slice(-1)
    if last_argument.class == Hash
      @proverb_words = args.slice(0..-2)
      @qualifier = last_argument[:qualifier]
    else
      @proverb_words = args
      @qualifier =  nil
    end
  end

  def to_s
    iter = lambda do |acc, words|
      return acc if words.size == 1

      first, *rest = words
      iter.call("#{acc}For want of a #{first} the #{rest.first} was lost.\n", rest)
    end
    final_word = qualifier.nil? ? proverb_words.first : "#{qualifier} #{proverb_words.first}"
    "#{iter.call('', proverb_words)}And all for the want of a #{final_word}."
  end
end

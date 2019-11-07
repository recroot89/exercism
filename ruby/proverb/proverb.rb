# frozen_string_literal: true

# Write your code for the 'Proverb' exercise in this file. Make the tests in
# `proverb_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/proverb` directory.

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

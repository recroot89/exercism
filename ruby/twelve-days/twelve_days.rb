# frozen_string_literal: true

class TwelveDays
  ORDINAL_NUMBERS = %w[first second third fourth fifth sixth seventh eighth ninth tenth eleventh twelfth].freeze
  ITEMS = [
    'a Partridge',
    'two Turtle Doves',
    'three French Hens',
    'four Calling Birds',
    'five Gold Rings',
    'six Geese-a-Laying',
    'seven Swans-a-Swimming',
    'eight Maids-a-Milking',
    'nine Ladies Dancing',
    'ten Lords-a-Leaping',
    'eleven Pipers Piping',
    'twelve Drummers Drumming'
  ].freeze

  def self.song
    ORDINAL_NUMBERS.each_with_index.each_with_object([]) do |(number, index), acc|
      items = "#{ITEMS.slice(1..index).reverse.join(', ')}, and #{ITEMS.first}"
      acc << "On the #{number} day of Christmas my true love gave to me: #{index.zero? ? ITEMS.first : items} in a Pear Tree.\n"
    end.join("\n")
  end
end

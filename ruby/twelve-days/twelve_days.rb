# frozen_string_literal: true

# Write your code for the 'Twelve Days' exercise in this file. Make the tests in
# `twelve_days_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/twelve-days` directory.

class TwelveDays
  SERIAL_NUMBERS = %w[zero first second third fourth fifth sixth seventh eighth ninth tenth eleventh twelfth].freeze
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
    (1..12).each_with_object([]) do |index, acc|
      items = "#{ITEMS.slice(1..index - 1).reverse.join(', ')}, and #{ITEMS.first}"
      acc << "On the #{SERIAL_NUMBERS[index]} day of Christmas my true love gave to me: #{index == 1 ? ITEMS.first : items} in a Pear Tree.\n"
    end.join("\n")
  end
end

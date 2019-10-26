# frozen_string_literal: true

# Write your code for the 'Resistor Color' exercise in this file. Make the tests in
# `resistor_color_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/resistor-color` directory.

class ResistorColor
  COLOR_CODES = {
    black: 0,
    brown: 1,
    red: 2,
    orange: 3,
    yellow: 4,
    green: 5,
    blue: 6,
    violet: 7,
    grey: 8,
    white: 9
  }.freeze

  COLORS = COLOR_CODES.keys.map(&:to_s).freeze

  def self.color_code(color)
    COLOR_CODES[color.to_sym]
  end
end

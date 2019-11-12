# frozen_string_literal: true

# Write your code for the 'Resistor Color Trio' exercise in this file. Make the tests in
# `resistor_color_trio_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/resistor-color-trio` directory.

class ResistorColorTrio
  BANDS = %w[black brown red orange yellow green blue violet grey white].freeze

  attr_reader :bands

  def initialize(bands)
    @bands = bands.slice(0..2)
  end

  def label
    raise ArgumentError if bands.any? { |b| !BANDS.include?(b) }

    band_values = bands.map { |b| BANDS.find_index(b) }
    resistor_value = "#{band_values[0]}#{band_values[1]}".to_i * 10**band_values[2]

    if resistor_value < 1000
      "Resistor value: #{resistor_value} ohms"
    else
      "Resistor value: #{resistor_value / 1000} kiloohms"
    end
  end
end

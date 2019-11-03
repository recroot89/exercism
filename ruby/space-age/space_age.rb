# frozen_string_literal: true

# Write your code for the 'Space Age' exercise in this file. Make the tests in
# `space_age_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/space-age` directory.

class SpaceAge
  EARTH_YEAR_IN_SECONDS = 31_557_600

  PLANET_YEAR_RATIO = {
    earth: 1,
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }.freeze

  attr_reader :age

  def initialize(seconds)
    @age = seconds.to_f / EARTH_YEAR_IN_SECONDS
  end

  PLANET_YEAR_RATIO.keys.each do |planet|
    define_method("on_#{planet}") do
      age / PLANET_YEAR_RATIO[planet]
    end
  end
end

# frozen_string_literal: true

class Triplet
  attr_reader :a, :b, :c

  def initialize(*sides)
    @a, @b, @c = sides
  end

  def sum
    a + b + c
  end

  def product
    a * b * c
  end

  def pythagorean?
    a**2 + b**2 == c**2 && (a < b && b < c)
  end

  def self.where(min_factor: 1, max_factor:, sum: false)
    (min_factor..max_factor).to_a.repeated_combination(3)
      .select { |sides| sum ? (sum == sides.sum) : true }
      .map { |a, b, c| Triplet.new(a, b, c) }
      .select(&:pythagorean?)
  end
end

# frozen_string_literal: true

class Triangle
  attr_reader :a, :b, :c

  def initialize(sides)
    @a, @b, @c = *sides
  end

  def equilateral?
    triangle_correct? && (a == b && a == c)
  end

  def isosceles?
    triangle_correct? && (a == b || a == c || b == c)
  end

  def scalene?
    triangle_correct? && (a != b && a != c && b != c)
  end

  private

  def triangle_correct?
    return false if a.nil? || b.nil? || c.nil?

    (a + b > c) && (b + c > a) && (a + c > b)
  end
end

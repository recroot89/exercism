# frozen_string_literal: true

class Darts

  def initialize(x, y)
    @x = x
    @y = y
  end

  def score
    radius = Math.sqrt(@x**2 + @y**2)
    if radius <= 1
      10
    elsif radius > 1 && radius <= 5
      5
    elsif radius > 5 && radius <= 10
      1
    else
      0
    end
  end
end

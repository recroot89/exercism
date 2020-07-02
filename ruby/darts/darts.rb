# frozen_string_literal: true

class Darts
  def initialize(x, y)
    @radius = Math.sqrt(x**2 + y**2)
  end

  def score
    case @radius
    when 0..1
      10
    when 1..5
      5
    when 5..10
      1
    else
      0
    end
  end
end

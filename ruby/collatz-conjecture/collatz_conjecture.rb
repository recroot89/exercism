# frozen_string_literal: true

class CollatzConjecture
  def self.steps(start_number)
    raise ArgumentError if start_number <= 0

    iter = lambda do |acc, num|
      return acc if num == 1

      if num.even?
        iter.call(acc + 1, num / 2)
      else
        iter.call(acc + 1, num * 3 + 1)
      end
    end

    iter.call(0, start_number)
  end
end

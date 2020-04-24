# frozen_string_literal: true

class Year
  def self.leap?(year)
    return false if (year % 100).zero? && year % 400 != 0

    (year % 4).zero?
  end
end

# frozen_string_literal: true

class ArmstrongNumbers
  def self.include?(number)
    digits = number.digits
    digits.sum { |digit| digit**digits.size } == number
  end
end

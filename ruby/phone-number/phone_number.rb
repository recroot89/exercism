# frozen_string_literal: true

class PhoneNumber
  def self.clean(input)
    full_number = input.tr('^0-9', '')
    return if full_number.start_with?('0')

    if full_number.start_with?('1')
      return if full_number.length != 11

      area_code = full_number.slice(1..3)
      exchange_code = full_number.slice(4..6)
    else
      return if full_number.length != 10

      area_code = full_number.slice(0..2)
      exchange_code = full_number.slice(3..5)
    end

    if area_code.start_with?('0', '1') || exchange_code.start_with?('0', '1')
      return
    end

    full_number.length == 11 ? full_number.slice(1..-1) : full_number
  end
end

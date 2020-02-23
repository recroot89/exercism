# frozen_string_literal: true

class Say
  SINGLE_NUMBERS = %w[zero one two three four five six seven eight nine].freeze
  FIRST_TEN = %w[ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen].freeze
  DOZENS = %w[_ _ twenty thirty forty fifty sixty seventy eighty ninety].freeze
  TENS_POWER = ['', 'thousand', 'million', 'billion'].freeze

  attr_reader :number, :formatted_number

  # formatted_number = [hundreds, thousands, millions, billions]
  # 1_234_567_890 = [890, 567, 234, 1]
  def initialize(number)
    @number = number
    @formatted_number = number.to_s
                              .reverse
                              .split('')
                              .each_slice(3)
                              .to_a
                              .map { |n| n.reverse.join.to_i }
  end

  def in_english
    raise ArgumentError if number.negative? || number >= 1_000_000_000_000
    return SINGLE_NUMBERS[number] if number < 10
    return FIRST_TEN[number % 10] if number < 20
    return 'twenty' if number == 20

    formatted_number.each_with_index.inject('') do |acc, (num, power)|
      num.zero? ? acc : "#{number_to_words(num, power)} #{acc}"
    end.squeeze(' ').strip
  end

  private

  def number_to_words(num, power)
    hundred, dozen, single = num.to_s.rjust(3, '0').split('').map(&:to_i)
    h = hundred.zero? ? '' : "#{SINGLE_NUMBERS[hundred]} hundred "
    return "#{h} #{SINGLE_NUMBERS[num]} #{TENS_POWER[power]}" if num % 100 < 10
    return "#{h} #{FIRST_TEN[num % 10]} #{TENS_POWER[power]}" if num % 100 < 20
    return "#{h} twenty #{TENS_POWER[power]}" if num % 100 == 20

    d = dozen.zero? ? '' : "#{DOZENS[dozen]}-#{SINGLE_NUMBERS[single]}"
    s = num < 10 ? SINGLE_NUMBERS[single] : ''
    "#{h}#{d}#{s} #{TENS_POWER[power]}"
  end
end

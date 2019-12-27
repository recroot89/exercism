# frozen_string_literal: true

# Write your code for the 'Clock' exercise in this file. Make the tests in
# `clock_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/clock` directory.

class Clock
  attr_reader :hour, :minute

  def initialize(hour: 0, minute: 0)
    @hour = (hour + minute / 60) % 24
    @minute = minute % 60
  end

  def to_s
    "#{format(hour)}:#{format(minute)}"
  end

  def ==(other)
    hour == other.hour && minute == other.minute
  end

  def +(other)
    Clock.new(hour: (hour + other.hour + (minute + other.minute) / 60) % 24,
              minute: (minute + other.minute) % 60)
  end

  def -(other)
    hour_offset = (minute + other.minute) / 60 + other.minute > minute ? 1 : 0
    minute_offset = other.minute > minute ? 60 : 0
    Clock.new(hour: (hour - other.hour - hour_offset) % 24,
              minute: (minute - other.minute + minute_offset) % 60)
  end

  private

  def format(number)
    number < 10 ? "0#{number}" : number.to_s
  end
end

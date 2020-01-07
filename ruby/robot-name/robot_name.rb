# frozen_string_literal: true

class Robot
  NAMES = ('AA000'..'ZZ999').to_a.shuffle.freeze
  @@count = 0

  attr_reader :name

  def initialize
    @name = NAMES[@@count]
    @@count = (@@count + 1) % NAMES.size
  end

  def reset
    @name = Robot.new.name
  end

  def self.forget; end
end

# frozen_string_literal: true

class Bob
  class << self
    def hey(message)
      remark = message.strip
      if ilegible?(remark)
        'Fine. Be that way!'
      elsif yelling?(remark)
        question?(remark) ? "Calm down, I know what I'm doing!" : 'Whoa, chill out!'
      else
        question?(remark) ? 'Sure.' : 'Whatever.'
      end
    end

    private

    def ilegible?(message)
      message.gsub(/\W/, '').empty? && !message.end_with?('?')
    end

    def question?(message)
      message.end_with?('?')
    end

    def yelling?(message)
      message.upcase == message && !message.scan(/[A-Za-z]/).empty?
    end
  end
end

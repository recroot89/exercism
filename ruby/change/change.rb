# frozen_string_literal: true

class Change
  class NegativeTargetError < StandardError
  end

  class ImpossibleCombinationError < StandardError
  end

  class << self
    def generate(coins, change_amount)
      raise NegativeTargetError if change_amount.negative?
      return [] if change_amount.zero?
      raise ImpossibleCombinationError if coins.min > change_amount

      generate_all_combinations(coins, change_amount).sort_by(&:size).first
    end

    private

    def generate_all_combinations(coins, change_amount)
      max_coins_number = (change_amount.to_f / coins.min).ceil
      result = []
      (1..max_coins_number).each do |n|
        coin_set = coins.repeated_combination(n).find { |s| s.sum == change_amount }
        result << coin_set unless coin_set.nil?
      end

      raise ImpossibleCombinationError if result.empty?
      result
    end
  end
end

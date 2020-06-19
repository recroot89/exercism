# frozen_string_literal: true

class Allergies
  attr_reader :list

  ITEMS = %w[eggs peanuts shellfish strawberries tomatoes chocolate pollen cats].freeze

  def initialize(score)
    @list = allergy_list(score)
  end

  def allergic_to?(item)
    list.include?(item)
  end

  private

  def allergy_list(score)
    reverse_indexes = (0..ITEMS.size - 1).to_a.reverse
    reverse_indexes.each_with_object(list: [], score: score % 256) do |i, acc|
      if acc[:score] >= 2**i
        acc[:list] << ITEMS[i]
        acc[:score] -= 2**i
      end
    end[:list]
  end
end

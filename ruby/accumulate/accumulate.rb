# frozen_string_literal: true

class Array
  def accumulate
    return to_enum(:accumulate) unless block_given?

    acc = []
    each do |element|
      acc << yield(element)
    end
    acc
  end
end

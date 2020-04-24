# frozen_string_literal: true

class Array
  def keep
    acc = []
    each do |element|
      acc << element if yield element
    end
    acc
  end

  def discard
    acc = []
    each do |element|
      acc << element unless yield element
    end
    acc
  end
end

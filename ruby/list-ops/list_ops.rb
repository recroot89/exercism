# frozen_string_literal: true

class ListOps
  class << self
    def arrays(elements)
      count = 0
      elements.each do |_element|
        count += 1
      end
      count
    end

    def reverser(array)
      new_array = []
      array.each do |element|
        new_array.unshift(element)
      end
      new_array
    end

    def concatter(array_one, array_two)
      array_one + array_two
    end

    def mapper(array)
      new_array = []
      array.each do |element|
        new_array << (yield element)
      end
      new_array
    end

    def filterer(array)
      new_array = []
      array.each do |element|
        new_array << element if yield element
      end
      new_array
    end

    def sum_reducer(array)
      sum = 0
      array.each do |element|
        sum += element
      end
      sum
    end

    def factorial_reducer(array)
      sum = 1
      array.each do |element|
        sum *= element
      end
      sum
    end
  end
end

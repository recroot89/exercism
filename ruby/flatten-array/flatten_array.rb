# frozen_string_literal: true

class FlattenArray
  def self.flatten(array)
    return [] if array.empty?

    array.reduce([]) do |acc, element|
      if element.is_a? Array
        acc.append(*flatten(element))
      else
        element.nil? ? acc : acc.append(element)
      end
    end
  end
end

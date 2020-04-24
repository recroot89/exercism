# frozen_string_literal: true

class Raindrops
  def self.convert(number)
    result = [3, 5, 7].each_with_object([]) do |num, acc|
      next unless (number % num).zero?

      acc.append('Pling') if num == 3
      acc.append('Plang') if num == 5
      acc.append('Plong') if num == 7
    end

    result.empty? ? number.to_s : result.join
  end
end

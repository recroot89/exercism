# frozen_string_literal: true

# Write your code for the 'Raindrops' exercise in this file. Make the tests in
# `raindrops_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/raindrops` directory.

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

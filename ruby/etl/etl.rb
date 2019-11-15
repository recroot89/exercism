# frozen_string_literal: true

# Write your code for the 'ETL' exercise in this file. Make the tests in
# `etl_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/etl` directory.

class ETL
  def self.transform(old)
    old.reduce({}) do |acc, (key, values)|
      acc.merge(values.map { |v| [v.downcase, key] }.to_h)
    end
  end
end

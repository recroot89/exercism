# frozen_string_literal: true

class ETL
  def self.transform(old)
    old.reduce({}) do |acc, (key, values)|
      acc.merge(values.map { |v| [v.downcase, key] }.to_h)
    end
  end
end

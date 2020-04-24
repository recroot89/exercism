# frozen_string_literal: true

class Palindromes
  attr_reader :min_factor, :max_factor
  attr_accessor :palindromes, :value, :factors

  def initialize(params)
    @max_factor = params[:max_factor]
    @min_factor = params[:min_factor] || 1
  end

  def generate
    @palindromes = generate_products.filter { |num,| num == num.reverse }
  end

  def largest
    @value = palindromes.keys.map(&:to_i).max
    @factors = palindromes[value.to_s]
    self
  end

  def smallest
    @value = palindromes.keys.map(&:to_i).min
    @factors = palindromes[value.to_s]
    self
  end

  private

  def generate_products
    iter = lambda do |acc, current_factor|
      return acc if current_factor > max_factor

      (min_factor..max_factor).each do |num|
        product_value = (num * current_factor).to_s
        new_factor_pair = [current_factor, num]

        if acc.key?(product_value)
          product_value_factors = acc[product_value]
          reversed_factor_pair = [num, current_factor]
          unless product_value_factors.include?(reversed_factor_pair)
            product_value_factors.append(new_factor_pair)
          end
        else
          acc.merge!(product_value => [new_factor_pair])
        end
      end

      iter.call(acc, current_factor + 1)
    end

    iter.call({}, min_factor)
  end
end

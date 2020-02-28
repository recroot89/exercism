# frozen_string_literal: true

class ComplexNumber
  attr_reader :real, :imaginary

  def initialize(real, imaginary)
    @real = real
    @imaginary = imaginary
  end

  def ==(other)
    real == other.real && imaginary == other.imaginary
  end

  def +(other)
    self.class.new(real + other.real, imaginary + other.imaginary)
  end

  def -(other)
    self.class.new(real - other.real, imaginary - other.imaginary)
  end

  def *(other)
    a = real
    b = imaginary
    c = other.real
    d = other.imaginary
    self.class.new((a * c - b * d), (b * c + a * d))
  end

  def /(other)
    a = real
    b = imaginary
    c = other.real
    d = other.imaginary
    self.class.new((a * c + b * d).to_f / (c**2 + d**2), (b * c - a * d).to_f / (c**2 + d**2))
  end

  def abs
    Math.sqrt(real**2 + imaginary**2)
  end

  def conjugate
    self.class.new(real, -imaginary)
  end

  def exp
    r = Math.exp(real)
    self.class.new(r * Math.cos(imaginary), r * Math.sin(imaginary).round(10))
  end
end

require 'pry'

class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    sides = [@side1, @side2, @side3]
    triangle_type = nil

    if sides.find { |side| side <= 0 }
      raise TriangleError
    elsif !(@side1 < @side2 + @side3 && @side2 < @side1 + @side3 && @side3 < @side1 + @side2)
      raise TriangleError
    end

    case sides.uniq.length
    when 1
      triangle_type = :equilateral
    when 2
      triangle_type = :isosceles
    when 3
      triangle_type = :scalene
    end

  end


  class TriangleError < StandardError
  end
end

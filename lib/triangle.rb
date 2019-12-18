class Triangle
  attr_accessor :x, :y, :z
 
  def initialize(x, y, z)
  @x = x 
  @y = y 
  @z = z
 
  def kind
    if triangle == true && triangle2 == true 
      puts true 
    else 
      raise TriangleError 
    end 
    
    if x == y && y == z && x == z
      :equilateral
    elsif x != y && y != z && z != x
      :scalene 
    else 
      :isosceles
    end 
  end
  
  def triangle 
    x.positive? && y.positive? && z.positive?
  end 
  
  def triangle2 
    x + y > z && x + z > y && y + z > x
  end 
end

class TriangleError < StandardError
  "This is not a legal triangle."
end
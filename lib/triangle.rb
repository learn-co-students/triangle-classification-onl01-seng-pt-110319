class Triangle
  # write code here
  attr_accessor :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
   #The sum of the lengths of any two sides of a triangle
    #always exceeds the length of the third side
    #Further, each side must be larger than 0.
    if one <= 0 || two <= 0 || three <= 0 || one + two <= three || two + three <= one || three + one <= two
      begin 
        raise TriangleError 
        puts error.message
      end
    elsif one == two && one == three && two == three
      :equilateral
    elsif one == three || one == two || two == three
      :isosceles
    else
       :scalene
    end
  end
  class TriangleError < StandardError
    # triangle error code
  end
end

  




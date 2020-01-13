
class Triangle
  # write code here
  attr_reader :sidea, :sideb, :sidec
  
  def initialize(sidea, sideb, sidec)
    @sidec = sidec
    @sideb = sideb
    @sidea = sidea
  end
  
  def valid_triangle
    valid = false
    if (((@sidea + @sideb) > @sidec) &&  ((@sidea + @sidec) > @sideb) &&  ((@sidec + @sideb) > @sidea))
     if ((@sidea > 0) && (@sideb > 0) && (@sidec > 0))
       valid = true
     end
    end
    valid
  end
    
  def kind
    if !valid_triangle
        raise TriangleError
    else
      if ( @sidea == @sideb && @sideb == @sidec )
        :equilateral
      elsif ( @sidea == @sideb && @sideb != @sidec )||( @sidea == @sidec && @sideb != @sidec )||( @sidec == @sideb && @sideb != @sidea )
        :isosceles
      else
        :scalene
      end
    end
  end
 
  class TriangleError < StandardError
  
  end
  
end

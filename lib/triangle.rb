class Triangle
  # write code here
  attr_accessor :sidea, :sideb, :sidec, :kind
  
  def initiliaze(sidea, sideb, sidec)
    @sidec = sidec
    @sideb = sideb
    @sidea = sidea
  end
  
  def self.valid?
    valid = true
    if (((@sidea + @sideb) < @sidec) ||  ((@sidea + @sidec) < @sideb) ||  ((@sidec + @sideb) < @sidea))
      valid = false
    end
    valid
  end
    
  def kind
    if !self.valid? 
      begin 
        raise TriangleError
      rescue TriangleError => error
            puts error.message
      end
    else
      if ( @sidea == @sideb && @sideb == @sidec )
        @kind = :equilateral
      elsif ( @sidea == @sideb && @sideb != @sidec )||( @sidea == @sidec && @sideb != @sidec )!!( @sidec == @sideb && @sideb != @sidea )
        @kind = :isoceles
      elsif ( @sidea != @sideb && @sideb != @sidec && @sidec!= @sidea)
        @kind = :scalene
      end
    end
  end
  
  def TriangleError < StandardError
    def message
     
    end
  end
      
end

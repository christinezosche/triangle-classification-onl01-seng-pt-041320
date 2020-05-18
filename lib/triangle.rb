class Triangle
  attr_accessor :length1, :length2, :length3
  
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end
  
  def valid?
    if @length1 <= 0 && @length2 <= 0 && @length3 <= 0
      return false
    elsif  @length1 + @length2 < @length3 || @length1 + @length3 < @length2 || @length2 + @length3 < @length1
      return false
    elsif  @length1 + @length2 == @length3 || @length1 + @length3 == @length2 || @length2 + @length3 == @length1
      return false
    else
      return true
    end
  end
  
  def kind
    if valid?
      if @length1 == @length2 && @length1 == @length3
        return :equilateral
      elsif @length1 == @length2 || @length1 == @length3 || @length2 == @length3
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end
  
  class TriangleError < StandardError
  end
  
end

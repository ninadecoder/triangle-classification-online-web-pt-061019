class Triangle
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end
  
  def kind
    if @side_one <= 0 || @side_two <= 0 || @side_three <= 0
      raise TriangleError
    elsif (@side_one + @side_two) < @side_three || (@side_one + @side_three) <= @side_two || (@side_two + @side_three) < @side_one
      raise TriangleError
    elsif @side_one == @side_two && @side_one == @side_three
      :equilateral
    elsif @side_two == @side_three || @side_one == @side_three || @side_one == @side_two
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
  end
end

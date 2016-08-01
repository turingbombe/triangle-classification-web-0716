require 'pry'

class Triangle
  # write code here
  attr_accessor :a, :b, :c, :test_triangle, :triangle_array
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
    @triangle_array = [a,b,c]
  end

  def kind
    # binding.pry
    test = test_triangle
    if test == true
      if ((a == b) && (a == c) && (b == c))
        return :equilateral
      elsif ((a == b) || (a == c) || (b == c))
        return :isosceles
      elsif a != b && b != c && a!=c 
        return :scalene
      end
    else
      begin
        raise TriangleError
      end 
    end

  end

  def test_triangle
    triangle_array.sort!
    if triangle_array[0] + triangle_array[1] <= triangle_array[2]
      return false
    elsif a < 0 || b < 0 || c < 0
      return false
    elsif triangle_array.include?(0)
      return false
    else
      return true
    end
  end
end


class TriangleError < StandardError

end
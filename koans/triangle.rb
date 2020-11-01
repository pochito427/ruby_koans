# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  
  #Every side of triangle must be more than zero
  if a <= 0 or b <= 0 or c <= 0
     raise TriangleError
  end
  
  #Two times max value among sides of triangle must be less than sum of sides
  if 2 * [a, b, c].max >= a + b + c
     raise TriangleError
  end
  
  default = :scalene
  if a == b and b == c and a == c
     default = :equilateral
  elsif a == b or b == c or a == c
     default = :isosceles
  end
  return default  
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

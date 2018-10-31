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
  array = [a, b, c]
  raise TriangleError unless array.all?{ |elem| elem.is_a?(Numeric) && elem > 0 }
  return :equilateral if array.uniq.size == 1
  return :isosceles if array.uniq.size == 2
  return :scalene if array.uniq.size == 3
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

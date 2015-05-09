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

def test_input(a,b,c)
  if a < 1 or b<1 or c<1 then
    raise TriangleError, "Sides should be positive integers"
  elsif (a+b <= c) or (b+c <= a) or (c+a <= b)
    raise TriangleError, "The sum of two legs should be greater than the hypotenuse"
  end
end

def triangle(a, b, c)
  test_input(a,b,c)
  if a.equal? b and b.equal? c then
      return :equilateral
  elsif a.equal? b or b.equal? c or c.equal? a then
      return :isosceles
  else
      return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

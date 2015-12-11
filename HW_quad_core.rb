# Homework Problem
# Define a class, Quadrilateral.
# Now, model this concept in Ruby using classes and inheritance:
# A rectangle, square, rhombus, and trapezoid are all types of quadrilaterals.
# A square is a type of rectangle.
# A rhombus is a type of trapezoid.
# Use TDD to confirm that all of your classes are working correctly.


class Quadrilateral  #begin, Quadrilateral class
  def initialize
    @sides = 4
  end
end #end, Quadrilater class

class Rectangle < Quadrilateral #begin, Rectangle class
end # end,Rectangle Class

class Square < Rectangle #begin, Square class
end # end,Square Class

class Trapezoid < Quadrilateral #begin, Trapezoid class
end # end,Trapezoid Class

class Rhombus < Trapezoid #begin, Rhombus class
end # end,Rhombus Class



q = Quadrilateral.new
r = Rectangle.new
s = Square.new
t = Trapezoid.new
h = Rhombus.new


def test

  quad = Quadrilateral.new
  puts quad.is_a? Quadrilateral
  puts not(quad.is_a? Rectangle)
  puts not(quad.is_a? Square)
  puts not(quad.is_a? Trapezoid)
  puts not(quad.is_a? Rhombus)

  rect = Rectangle.new
  puts rect.is_a? Quadrilateral
  puts rect.is_a? Rectangle
  puts not(rect.is_a? Square)
  puts not(rect.is_a? Trapezoid)
  puts not(rect.is_a? Rhombus)

  squa = Square.new
  puts squa.is_a? Quadrilateral
  puts squa.is_a? Rectangle
  puts squa.is_a? Square
  puts not(squa.is_a? Trapezoid)
  puts not(squa.is_a? Rhombus)

  trap = Trapezoid.new
  puts trap.is_a? Quadrilateral
  puts not(trap.is_a? Rectangle)
  puts not(trap.is_a? Square)
  puts trap.is_a? Trapezoid
  puts not(trap.is_a? Rhombus)

  rhom = Rhombus.new
  puts rhom.is_a? Quadrilateral
  puts not(rhom.is_a? Rectangle)
  puts not(rhom.is_a? Square)
  puts rhom.is_a? Trapezoid
  puts rhom.is_a? Rhombus
end

test

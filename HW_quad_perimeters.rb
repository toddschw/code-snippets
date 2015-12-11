# Homework Problem
# Think back to how you set up an area method
# for your Square class in a previous assignment.
# Use that knowledge to help you create a perimeter
# method for the Quadrilateral which will return the sum of the side lengths.
# Use tests to confirm that the class is working correctly.



class Quadrilateral  #begin, Quadrilateral class
  def initialize (side1,side2,side3,side4)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @side4 = side4
  end

  def sum_sides
    @side1 + @side2 + @side3 + @side4
  end

end #end, Quadrilater class

class Rectangle < Quadrilateral #begin, Rectangle class
  def initialize (side1,side2)
    @side1 = side1
    @side2 = side2
  end
  def sum_sides
    ( @side1 * 2) + ( @side2 *2 )
  end
end # end,Rectangle Class

class Square < Rectangle #begin, Square class
  def initialize (side)
    @side1 = side
  end

  def sum_sides
    ( @side1 * 4 )
  end
end # end,Square Class

class Trapezoid < Quadrilateral #begin, Trapezoid class
end # end,Trapezoid Class

class Rhombus < Trapezoid #begin, Rhombus class
  def initialize (side1,side2)
    @side1 = side1
    @side2 = side2
  end
  def sum_sides
    ( @side1 * 2) + ( @side2 * 2 )
  end
end # end,Rhombus Class


def test

  quad = Quadrilateral.new(1,2,3,4)
  puts quad.sum_sides == 10

  rect = Rectangle.new(10,20)
  puts rect.sum_sides == 60

  squa = Square.new(5)
  puts squa.sum_sides == 20

  trap = Trapezoid.new(10,20,30,40)
  puts trap.sum_sides == 100

  rhom = Rhombus.new(50,100)
  puts rhom.sum_sides == 300
end

test

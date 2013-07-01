require 'pry'
 
class Rectangle < Object
 
  def initialize(width, height)
    @width = width
    @height = height
  end
 
  #width reader
  def width
    return @width
  end
 
  #height reader
  def height
    return @height
  end
 
  #width writer
  def width=(width)
    @width = width
  end
 
  #height writer
  def height=(height)
    @height = height
  end
 
  def area
    return @width * @height
  end
 
 
end
 
r = Rectangle.new(8,4)
binding.pry
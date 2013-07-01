require 'pry'
 
class Rectangle
 
 # @@num_rects = 0
 
  attr_accessor :width, :height
 
  def initialize(width, height)
    @width = width
    @height = height
    # @@num_rects += 1
  end
 
  def area
    @width * @height
  end
 
  # def num_rects
  #   @@num_rects
  # end
 
end
 
 
class Square < Rectangle
 
  attr_accessor :side
 
  def initialize(side)
    @side = side
    super(side, side)
  end
 
  def area
    @side ** 2
  end
 
end
 
 
 
 
 
 
r = Rectangle.new(8,4)
r2 = Rectangle.new(32,2)
binding.pry
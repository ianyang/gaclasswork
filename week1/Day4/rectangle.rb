class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width = width
    @height = height
  end

  def perimeter
    puts 2 * (@width.to_i + @height.to_i)
  end

  def area
    puts @width.to_i * @height.to_i
  end
end

class Square < Rectangle

  attr_accessor :sides

  def initialize(sides)
    @sides = sides
    @width = sides
    @height = sides
  end

end

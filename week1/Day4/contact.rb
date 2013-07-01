class Contact
  attr_accessor :name, :age, :fav_color, :twitter
 
  def initialize(name, age, fav_color, twitter)
    @name = name
    @age = age
    @fav_color = fav_color
    @twitter = twitter
  end
 
  def inspect()
    puts('---------')
    p self.class
    p @name #name() # self.name()
    p self.greet()
  end
 
  def greet
    return "Hello, my name is #{@name} and I am #{@age} years old"
  end
end



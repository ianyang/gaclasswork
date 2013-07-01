#!/usr/bin/env ruby

# functions

def add(a, b)
  return a.to_f + b.to_f 
end

def minus(a, b)
  return a.to_f - b.to_f 
end

def multiply(a, b)
  return a.to_f * b.to_f 
end

def divide(a, b)
  return a.to_f / b.to_f 
end

def exponent(a, b)
  return a.to_f ** b.to_f 
end

def roots(a, b)
  return a.to_f ** (1 / b.to_f )
end

def basic_calc()

  puts "Please select the function you want to do"
  puts "Press 1 for addition"
  puts "Press 2 for subtraction"
  puts "Press 3 for multiplication"
  puts "Press 4 for division"

  calculation_type = gets.chomp.to_s
  
  until calculation_type.to_i < 5 && calculation_type.to_i > 0
 
  puts "Oops. Please try again"
  calculation_type = gets.chomp.to_s

  end

  p "Please enter the first number"
  number1 = gets.chomp
  p "Please enter the second number"
  number2 = gets.chomp
  
  if calculation_type == "1"
    p add(number1, number2)

  elsif calculation_type == "2"
    p minus(number1, number2)

  elsif calculation_type == "3"
    p multiply(number1, number2)

  elsif calculation_type == "4"
    p divide(number1, number2)

  end
end

def advanced_calc()

  puts "Please select the advanced function you want to do"
  puts "Press 1 for exponents"
  puts "Press 2 for roots"

  calculation_type = gets.chomp.to_s
  
  until calculation_type.to_i < 3 && calculation_type.to_i > 0
 
  puts "Oops. Please try again"
  calculation_type = gets.chomp.to_s

  end

  if calculation_type == "1"
    
    p "Please enter the base number"
    number1 = gets.chomp
    p "Please enter the exponent number"
    number2 = gets.chomp
    p exponent(number1, number2)

  elsif calculation_type == "2"

    p "Please enter the base number"
    number1 = gets.chomp
    p "Please enter the roots number"
    number2 = gets.chomp
    p roots(number1, number2)
  
  end
end

# initial question
puts "Please select from one of the following options."
puts "Press 1 for simple calculator"
puts "Press 2 for advanced calculator"
puts "Press Q to quit"

select = gets.chomp

until select == "1" || select == "2" || select == "Q"
 
  puts "Oops. Please try again"
  select = gets.chomp

end

if select == "1"
  basic_calc()

elsif select == "2"
  advanced_calc()

elsif select.upcase == "Q"
  puts "Thank you for your time"

end




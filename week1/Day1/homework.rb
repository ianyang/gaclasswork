#!/usr/bin/env ruby

# model
split = ARGV[0]
number = ARGV[1].to_i
students = %w[Alex Elen Lior Donielle Justin Ian Rick Theo Josh Karl Kevin Brian Sean Dave Todd Sharif Travis]

# controller

students.shuffle!

if "-g" == split
  output = students.each_slice(number).to_a

elsif "-n" == split
  number = number -1
  while number > -1
    p students[number]
    number = number - 1
  end

else
  output = "Please try again."

end

# view
p output

#!/usr/bin/env ruby

require('./studentsclass')
require "json"
json = File.read("classlist.json")
data = JSON.parse(json)

students_array = []

for x in data
  students_array << Student.new(x)
end

students_array.shuffle!
# name = []
# students_array.each do |x|
#   name << x.name

# this can be avoided doing a loop during the printing.
end

puts "Please indicate how you want to split the group."
puts "Press G for groups and N for numbers"
split = gets.chomp

until split.upcase == "G" || split.upcase == "N"
  puts "Oops please try again"
  split = gets.chomp
end

puts "Please indicate how you want to split."
number = gets.chomp.to_i

if split.downcase == "g"

  name.each_slice(number) { |x| p x}

else

  p name[0...number]

end


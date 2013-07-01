#!/usr/bin/env ruby


puts "This is a trip calculator. We will be asking you a few questions."

puts "Distance: How far will you drive (in miles)?"
distance = gets.chomp.to_f

puts "MPG: What is your fuel efficiency in miles per gallon?"
mpg = gets.chomp.to_f

puts "Gas: How much does gas cost per gallon (in USD)?"
gas = gets.chomp.to_f

puts "Speed: How fast do you drive (in miles per hour)?"
speed = gets.chomp.to_f

time = distance / speed
total = distance / mpg * gas

puts "Your trip will take" + time.to_s + " hours and cost $" + total.to_s + "."

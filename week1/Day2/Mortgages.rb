#!/usr/bin/env ruby

#Mortgage
puts "This is a mortgage calculator. We will be asking you a few questions."

puts "Principal?"
principal = gets.chomp.to_f

puts "Interest"
interest = gets.chomp.to_f

puts "Payments"
payments = gets.chomp.to_f

total =  principal * (interest*((1 + interest)**payments) / ((1 + interest)**payments) - 1)

puts "Your mortgage payment is $" + total.to_s + " per month."

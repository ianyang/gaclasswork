#!/usr/bin/env ruby

# model
require "json"
json = File.read("students.json")
students = JSON.parse(json)

split = ARGV[0].downcase
number = ARGV[1].to_i

# controller
students.shuffle!

if "-g" == split
  output = students.each_slice(number).to_a

elsif "-n" == split
  output = students[0...number]

else
  output = "Please try again."

end

# view
p output


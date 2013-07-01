#!/usr/bin/env ruby

# model
str = ARGV[0]
flag = ARGV[1]

# controller
if ("-C" == flag)
  str = str.upcase
end

# view
puts(str)

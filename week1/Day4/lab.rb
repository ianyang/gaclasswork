!#/usr/bin/env ruby

require('./ga-flickr')

# List keys of the whole hsh
# List the description of the main hash
# List the keys of the first item
# List the values of the first item
# Ceate a string with all of the authors comma-separated

hash = GaFlickr.load()

puts hash.keys()

puts hash["description"]

puts hash["items"][0].keys()

puts hash["items"][0].values()

puts "ALL THE AUTHORS"

str = hash["items"].inject("") { |all, item|
  all + item["author"]
}

puts str


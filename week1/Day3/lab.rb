#!/usr/bin/env ruby

require 'open-uri'
require 'json'

url = "https://gist.github.com/bridgpal/e032c851cebf6de1a968/raw/820ef8ca253e9aaf986c010e235ef1141564fedc/products.json"
result = JSON.parse(open(url).read)

items = result["items"]

#1
puts items.length

#2 (mine)
source = []
for item in items
  source.push(item["product"]["author"]["name"])
end

name = []
for item in items
  name.push(item["product"]["title"])
end

ebay = source.grep(/^eBay/)
ebay.each do |x|
	position=source.index(x)
  puts name[position]
end

#2 (easy)
items.each do |item|

  if item["product"]["author"]["name"].include? "eBay"
    puts item["product"]["title"]
  end
end

#3
puts name[22]

#4
new_array = []

for item in items
  products_short = {
  name: item["product"]["title"],
  description: item["product"]["description"],
  price: item["product"]["inventories"][0]["price"],
  image_url: item["product"]["images"]
  }
  new_array.push(products_short)
end
puts new_array

#5
new_array.each do |x|
  puts x[:name] + " - $" + x[:price].to_s + " (" + x[:description] + ")"
end



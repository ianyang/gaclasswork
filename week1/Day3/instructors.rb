#!/usr/bin/env ruby
require('pp')
 
# magically load the csv string
def load()
  File.open("instructors.csv", "r") { |f|
    data = f.read()
    return data
  }
end
 
def print_how_i_want(x)
  p(x, x.class)
end
 
def fields_to_hash(fields)
  return {
    name: fields[0],
    email: fields[1],
    phone: fields[2],
    title: fields[3].gsub("(", '').gsub(")", '')
  }
end
 
# my whole program
def main()
  csvtext = load()
  persons = csvtext.split("\n")
  contacts = []
  persons.each { |person|
    fields = person.split(/,/)
    fields.each { |field|
      field.strip!()
    }
    hash = fields_to_hash(fields)
    contacts.push(hash)
  }
  contacts.each { |fields|
    p(fields[:name], fields[:email])
  }
end
 
main()
 
  #for person in persons
  #  puts(person)
  #end
  #for i in 0..(persons.length - 1)
  #  puts persons[i]
  #end
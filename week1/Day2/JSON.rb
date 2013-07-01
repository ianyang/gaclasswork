#!/usr/bin/env ruby

#JSON

require("json")
 
def save(name, stuff)
  File.open(name, "w") { |f|
    f.write(names.to_json)
  }

end
 
def load(name)
  return JSON.parse(f.read(name))
end
 
names = load("names.json")
 
save("names.json", names)
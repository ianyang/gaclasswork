require("./contact")
 
contacts = [
  Contact.new("AJ", 27, "red", "@coolaj86"),
  Contact.new("Anil", 27, "orange", "@bridgpal")
]
contacts.each { |c|
 c.inspect()
}
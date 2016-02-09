# 4.3.1 Format an Address

# I worked on this challenge [by myself, with: ].


# Your Solution Below

#Create a method called make_address that
#accepts parameters for the street, city ,
#state, and zip and returns a single address string.

#Pseudocode:
#Define method and parameters
#Return full address in a string

def make_address(street_address, city, state, zip)
  puts street_address
  puts city
  puts state
  puts zip.to_s
  return "You live at " + street_address + ", in the beautiful city of " + city + ", " + state + ". " + "Your zip is " + zip.to_s + "."
end

make_address("633 Folsom St.", "San Francisco", "CA", "94107")

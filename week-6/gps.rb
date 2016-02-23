# Your Names
# 1) Jackie Feminella
# 2) Noah Schutte

# We spent 1 hour on this challenge.

# Bakery Serving Size portion calculator.

# Comment most of the code, Debug from the top, Pseudocode, Refactoring, Add features

# Inputs: What to bake? How many ingredients we have?
# Outputs: Errors, Name & Quantity of things we can bake.

#LEGACY CODE WITH COMMENTS & REFACTORED CODE - SEE REFACTORED SOLUTION BELOW
def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  #Values are serving sizes
  # Cookbook that gives instruction for ingredients required.

  # error_counter = 3
  # If we don't have enough ingredients, raise an error

    raise ArgumentError.new("#{item_to_make} is not a valid input") if library.include?(item_to_make) == false

#   library.each do |food|
#     if library[food] != library[item_to_make]
#       error_counter += -1
#     end
#   end
#   puts error_counter

#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end
#   # If we don't have this food in our library, raise an error.

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size

    #Pseudocode
 # if remaining ingredients exceed the required, then provide quantity of items made
  #  else notify that we dont have enough ingredients

  return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}" if remaining_ingredients == 0
  return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"

  # if remaining_ingredients == 1
  #   elsif remaining_ingredients == 3
  #   elsif remaining_ingredients == 7
  # end

end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#Refactored Solution:

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError.new("#{item_to_make} is not a valid input") unless library.include?(item_to_make)

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size

  return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}" if remaining_ingredients == 0
  return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
end


=begin Reflection
What did you learn about making code readable by working on this challenge?
Sometimes if code is not readable, someone reading your code may not see the value in it.
We eliminated several lines, and features/variables, that besides being slightly unreadable, did not make sense for the purpose of the program.

Did you learn any new methods? What did you learn about them?
I did not learn new methods in this challenge, but our guide suggested using unless if we were to use if false, which was a helpful reminder.

What did you learn about accessing data in hashes?
You can access values in a hash by typing the hash name and the name of the keys. In our case, it was the following:
serving_size = library[item_to_make]

What concepts were solidified when working through this challenge?
It was a nice review to use string interpolation in here. Accessing data in a hash was helpful too, and it was
interesting to see the hash's data interact with our output.

=end

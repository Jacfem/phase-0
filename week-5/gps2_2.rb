=begin

Psuedocode:

Input: String separated by spaces (grocery list)
Print grocery list
Output: List in hash form, default quantity is 1


# Method to add an item to a list
# input: item name (string) and optional quantity: string (item), integer (quantity)
# steps: our_hash["key"] = "value"
# output: updated hash

# Method to remove an item from the list
# input: key (item)
# steps: our_hash.delete["key"] --- Will delete key, value pair
# output: updated hash

# Method to update the quantity of an item
# input: key and updated value for quantity
# steps: our_hash["existing key"] = "new value"
# output: updated hash

Later to update:
Ask for item
Ask for quantity of item

# Method to print a list and make it look pretty
# input: hash
# steps: iterate through each key, value pair and print them in neat format
# output: the list of item/quantity on separate lines
=end



def grocery_list(list)
  list_hash = Hash.new(1)
  list_array = list.split(' ')
  list_array.each do |item|
    list_hash.store(item, 1)
  end
  return list_hash
end

def add_item(list_hash, grocery, qty)
  list_hash.store(grocery, qty)
  return list_hash
end

def remove_item(list_hash, grocery)
  list_hash.delete(grocery)
  return list_hash
end

def update_quantity(list_hash, item, qty)
  list_hash[item] = qty
  return list_hash
end

def print_list(list_hash)
  list_hash.each_pair do |key, value|
    print key + ": "
    puts value
  end
end

=begin
Reflection
What did you learn about pseudocode from working on this challenge?
Psuedocoding as clearly as possible helps immensely when you get to the coding portion. I know you're not supposed to use coding lingo,
but we added some in while also explaining what it would do, which made our coding portion faster.

What are the tradeoffs of using Arrays and Hashes for this challenge?
We personally decided on a hash because we needed to have two distinct values, and arrays would only provide us with a distinct key, and indexes as the values.
We wanted to be able to update the quantity of an item by accessing its key, so we chose hashes.

What does a method return?
A method returns the evaluated result from the last line executed.

What kind of things can you pass into methods as arguments?
You can pass anything! We learned that you can pass in a hash as an argument and that without classes, this was necessary for us to
have access to the list hash.

How can you pass information between methods?
You can pass information in arguments/parameters. Alternatively, defining a Class at the beginning of your methods will allow information to be shared inside the scope of that class.

What concepts were solidified in this challenge, and what concepts are still confusing?
The concept of what Classes are used for was solidifed in this. It would have been much easier to define a Class
at the start of our code and then all the behavior we defined would have been contained inside of it.


=end

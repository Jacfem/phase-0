# Smallest Integer

# I worked on this challenge by myself

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

#Array.new = [list_of_nums]

def smallest_integer(list_of_nums)
  if list_of_nums.length == 0
    return nil
  else
    return list_of_nums.min
  end
end



=begin
Pseudocode:
Set Array as parameter
If there is an array of integers, return lowest integer
If it's an empty list, return nil

=end

=begin
Psuedocode:


Input: List of names

Output: Multiple lists of names, breaking the original list down into groups of 4, 5, or at least 3 names.

Steps:
Define a method that takes an array of strings or range of numbers to represent the students.
Randomly pull 4 or 5 items from array
Store this array of pulled items into a new place, and make sure that they are gone from the original array
Continue until original array is empty.
Return new array of groups.

If we have 59 students, we can have the following:
14 groups of 4 & 1 group of 3
OR
11 groups of 5 & 1 group of 4 - I will use this so that there are fewer groups.

Code:
#This worked for outputting just one group of 5 but would not finish the larger group.
def acct_groups(array)
    new_array = []
      if array.empty? == false
        p new_array << array.sample(5)
    end
end
#Loop through new array and delete all of its values from array.

SOLUTION:
=end

def acct_groups(array)
    new_array = [] #Creating an array to store my unique arrays of names in.
    n = 0 #Going to count through array of arrays
    until array.empty? == true
      new_array << array.sample(5) #Pushing random samples of 5 people into a new array.
      x = 0 #Want to loop through first index of array in order to delete the unique values in my arrays from the original array.
      until x == 5
        array.delete(new_array[n][x])
        x += 1 #Go up by one in order to access each index, until we hit index 5, which will have nothing in it.
      end
      n += 1 #Go up one as we continue to add new arrays
  end
  p new_array
end

sample_array = (1..59).to_a
acct_groups(sample_array)


# FIRST REFACTORED SOLUTION:

def acct_groups(array)
    new_array = []
    n = 0
    until array.empty? == true
      new_array << array.sample(5)
      x = 0
      until x == 5
        array.delete(new_array[n][x])
        x += 1
      end
      n += 1
  end
  p new_array
end
=end

#SECOND REFACTORED SOLUTION
def acct_groups(array)
  array.shuffle.each_slice(5){|a| p a}
end

sample_array = (1..59).to_a
acct_groups(sample_array)

=begin
Reflection
What was the most interesting and most difficult part of this challenge?
Both most interesting & most difficult was to find a way to delete the items I was pulling from the original array in order to not repeat groups.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
Yes. I still need to do a lot of research as I'm trying to implement my pseudocode, but I'm finding that I'm thinking more in terms of array/hash creation and manipulation which I think is a good sign.

Was your approach for automating this task a good solution? What could have made it even better?
I believe it was. It can handle any positive integer, so if someone leaves/joins, this solution will still work.
I didn't need to create any extra conditions for any leftover people as they were just pushed into their own group even if they did not reach a count of 5.
I could have made this better by printing out a cleaner way of presenting the groups.

What data structure did you decide to store the accountability groups in and why?
I stored the group in an array because there wasn't another unique value I needed stored besides just having separate groups, and we can access group numbers by index in an array.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I couldn't find any more efficient ways of refactoring this solution if I were to maintain the strategy I took. I did find that
I could've used a hash in order to store numbers of the groups.
UPDATE: I found that shuffle and each_slice works great to shorten this code & randomizes the results each time! It also presents the output in a much cleaner manner.
=end

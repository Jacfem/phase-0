
# Pad an Array

# I worked on this challenge with Joseph Yoo.

# I spent 2.5 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

=begin
0. Pseudocode
What is the input?
An array, a non-negative integer, and a default value
What is the output? (i.e. What should the code return?)
The array of our minimum size with any padding
What are the steps needed to solve the problem?
Use an if-else statement to determine if the array length meets the minimum size.
If the array does meet the minimum size, return the array as it is.
If the array does not meet the minimum size, fill the default values into the array to meet the minimum size.


=end
# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  elsif array.length < min_size
    a = min_size - array.length   #Used to find amount of padding needed
    array1 = Array.new(a)    #Used to create a new array with the size of amount of padding needed
    array2 = array.push(array1)   #used to push the padded array into the array we will return
  end
  return array2
end


def pad(array, min_size, value = nil) #non-destructive
  new_array = array.clone   # Need to clone this to make method non-destructive
  if new_array.length >= min_size
    if min_size = 0
      return new_array
    end
  else
   counter = new_array.length
   array1 = Array.new
   c = 0
   until c == counter
    array1[c] = new_array[c]
    c += 1
  end
    until counter == min_size
      array1[counter] = value
      counter += 1
    end
  end
  array1
end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    (min_size - array.length).times {|n| array << value}
    #I can use this times method rather than creating a variable 'a' as I did above, and then can push that many directly into my new array.
  end
  return array
end


def pad(array, min_size, value = nil) #non-destructive
  new_array = array.clone   # Need to clone this to make method non-destructive
  if new_array.length >= min_size
      return new_array
  else
    (min_size - new_array.length).times {|n| new_array << value}
  end
  return new_array
end


=begin
4. Reflection
Were you successful in breaking the problem down into small steps?
Yes, but we ended up needing to break it down further into even smaller steps.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
We needed to expand further into our 'else' statement, but we knew that we could make the skeleton of the code without that condition, and then re-visit it.
We had success with the idea of 'find the minimum length and pad the array until it meets that requirement' but had trouble not using a destructive method for this.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
The destructive solution was initially successful, but the non-destructive was not. We were finding trouble with the non-destructive method, but eventually solved the problem by cloning the array at the beginning.

When you refactored, did you find any existing methods in Ruby to clean up your code?
Yes. We initially used a counter for our non-destructive method, but this was very manual and messy looking. I found that if i took out the counter variable, and
implemented what that would be with a times method, I could push that amount of the values directly into a new array.

How readable is your solution? Did you and your pair choose descriptive variable names?
Initially we did not use descriptive variable names because we were trying to create several arrays in order to not modify our original. I think the end result is better than it was at first since I eliminated the numbered arrays and just cloned the first one, calling it new_array.

What is the difference between destructive and non-destructive methods in your own words?
Desctrucive methods forever change (aka destruct!) the object you apply a code block to, and return the original object, but changed.
Non-destructive methods do not actually augment the original object you applied code to, but rather return you a new object with the modifications needed.


=end

# Calculate the Median!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge by myself.

# 0. Pseudocode

# What is the input? Array of numbers
# What is the output? The median number from that array
# What are the steps needed to solve the problem?
  #Input Array of numbers
  #Sort the array
  #Find array length
  #If the array length is odd, it is the middle position
  #If the array length is even, it is the mean value of the two middle values


# 1. Initial Solution
def median (array)
  array.sort!
  if array.length % 2 != 0  # If array is odd length
    med = array[(array.length/2)]
  else                  # If array is even length
    med = (array[array.length/2] + array[array.length/2 - 1])/2.round(1)
  end
  p med
end

# 3. Refactored Solution
def median (array)
  array.sort!
  if array.length.even?
    med = (array[array.length/2] + array[array.length/2 - 1])/2.round(1)
  else
    med = array[(array.length/2)]
  end
end

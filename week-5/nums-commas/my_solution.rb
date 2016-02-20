# Numbers to Commas Solo Challenge

# I spent 2 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# Input is a positive integer
# Output is a comma-separated integer as a string.

# What are the steps needed to solve the problem?
#Define a method
#Method's argument is one positive integer
#Depending on the length of the integer, we add commas three in from the end, and potentially multiple times
#first will manually do this, then will try to create a loop for it.
#Turn integer to string in each case
#Return the result by calling the method

# 1. Initial Solution

def separate_comma(random_num)
  if random_num < 1000
    return random_num.to_s
  elsif (random_num > 1000) && (random_num < 999999)
      random_num = random_num.to_s.insert(-4, ',')
  else
      random_num = random_num.to_s.insert(-4, ',')
      random_num = random_num.to_s.insert(-8, ',')
    return random_num
  end
end

#first comma always at [-4]
#that will happen everytime I get to 'else'
#comma variable = -4


# 2. Refactored Solution

def separate_comma(random_num)
  if random_num < 1000
    return random_num.to_s
  else
    comma = -4
    while comma.abs <= random_num.to_s.length #sets absolute value for comma
      random_num = random_num.to_s.insert(comma, ',')
      comma -= 4
    end
    return random_num
  end
end


=begin 3. Reflection
1. In my refactored solution, I wanted to eliminate the need to always set more 'elsifs' for a growing number.
I found that setting a loop with a variable 'comma' that will grow along with a growing length of a number
could solve this problem. We know that if the number is equal to or greater than 1000, it needs a comma at the -4 index.
I wanted to then check if the number will need more than one comma, basically if it's at least 8 digits long.
The comma should insert on every 4th digit from the end of the number, and if the comma variable is larger than the
 number length, it will stop adding a comma to the number.

2. My pseudocode was effective in helping me build this.

3. I had to use the .abs method which will set the comma's value to be an absolute value, to account for me using negative indexes.

4. I initially iterated through the data structure with if/else statements. This worked but was not scalable for an infinite
length of digits in a number.

5. I feel my refactored solution is more readable because of the loop I added, as well as the comma variable. I think that
it's a better thought process for this solution to be able to handle larger numbers, so I think eliminating the cases that I had in
my first solution ((random_num > 1000) && (random_num < 999999)) makes this a cleaner solution.


=end

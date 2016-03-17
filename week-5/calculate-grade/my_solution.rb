# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input? An array
# What is the output? A letter grade that is the average of the test scores from the array
# What are the steps needed to solve the problem?
# Create a method that takes an array
# Average the elements in that array
# Use certain conditions to determine which letter grade the average result falls under
# Return that letter grade

# 1. Initial Solution
def get_grade(array)
  total = 0
  array.each {|num| total += num}
  average = total/array.length
  if average >= 90
    letter_grade = "A"
  elsif average >= 80
    letter_grade = "B"
  elsif average >= 70
    letter_grade = "C"
  elsif average >= 60
    letter_grade = "D"
  else
    letter_grade = "F"
  end
  return letter_grade
end

# 3. Refactored Solution
def get_grade(array)
  total = 0
  array.each {|num| total += num}
  average = total/array.length

  case average
  when 90..100 then letter_grade = "A"
  when 80..89 then letter_grade = "B"
  when 70..79 then letter_grade = "C"
  when 60..69 then letter_grade = "D"
  else letter_grade = "F"
  end
end


# 4. Reflection

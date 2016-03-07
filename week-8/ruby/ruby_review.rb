# I worked on this challenge by myself.
# This challenge took me 30 minutes.

=begin Pseudocode
Fibonacci Sequence:
Starting with 0 and 1, Add current number plus number before it to create next number, Repeatedly.
Input: Number
Output: Boolean value if it is a Fib. number

# Initial Solution - Fibonacci Sequence
=end
def is_fibonacci?(num)
  random_fibonacci = [0, 1]
  i = 1
  until random_fibonacci[i] >= num
  fib_num = (random_fibonacci[i]) + (random_fibonacci[i-1])
  random_fibonacci << fib_num
  i += 1
  end
  random_fibonacci.include?(num)
end

# Refactored Solution

def is_fibonacci?(num)
  random_fibonacci = [0, 1]
  i = 1
  until random_fibonacci[i] >= num
  random_fibonacci << (fib_num = (random_fibonacci[i]) + (random_fibonacci[i-1]))
  i += 1
  end
  random_fibonacci.include?(num)
end

=begin Reflection

What concepts did you review or learn in this challenge?
I reviewed iterating over and appending to arrays, as well as accessing values via indexes.

What is still confusing to you about Ruby?
Sometimes I have a hard time deciding what type of looping to do, as in 'while' or 'until.''

What are you going to study to get more prepared for Phase 1?
I'm going to do more work with hashes & arrays in Ruby, as well as work on solidifying past methods.

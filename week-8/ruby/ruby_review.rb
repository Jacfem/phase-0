# I worked on this challenge by myself.
# This challenge took me 30 minutes.

=begin Pseudocode
Fibonacci Sequence:
Starting with 0 and 1, Add current number plus number before it to create next number, Repeatedly.
Input: Number
Output: Boolean value if it is a Fib. number

# Initial Solution - Fibonacci Sequence

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



_____________
Reverse words
Input: Sentence as a string
Output: Reverses each word in the sentence

Initial Solution:





def reverse(sentence)
  sentence.to_s.reverse
end




__________
Assert Statements

=end
# def assert
#   raise "Assertion failed!" unless yield
# end
#
# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# Above, we're defining a method named assert, that raises 'Assertion failed'
# unless the method yields.



# 3. Copy your selected challenge here


=begin FizzBuzz
Psuedocode:
# This returns an array of the given `size` containing random powers of `base`
# Since no power of 3 is ever a multiple of 5, this lets us create random arrays
# that contain multiples of 3 and no multiples of 5
Input: array
Output: Array with:
Elements multiple of 3 - 'Fizz'
Elements multiple of 5 - 'Buzz'
Elements multiple of 15 - 'FizzBuzz'
=end

def super_fizzbuzz(array)
  array.map! {|i|
    if (i % 15 == 0)
        "FizzBuzz"
    elsif (i % 3 == 0) && (i % 5 != 0)
      "Fizz"
    elsif (i % 5 == 0)
      "Buzz"
    else
      i
    end
}
end

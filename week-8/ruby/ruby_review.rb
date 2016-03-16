=begin
I worked on this challenge by myself.
This challenge took me 30 minutes.

Pseudocode
Fibonacci Sequence:
Starting with 0 and 1, Add current number plus number before it to create next number, Repeatedly.
Input: Number
Output: Boolean value if it is a Fib. number

# Initial Solution - Fibonacci Sequence - COMPLETE

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
Reverse words -COMPLETE
Input: Sentence as a string
Output: Reverses each word in the sentence

Initial Solution:
=end

def reverse_words(sentence)
  if sentence != ("")
    array = sentence.split(" ")
    array.map!{|x| x.reverse}
    array.join(" ")
  elsif sentence == ("")
    return sentence
  end
end


#REFACTORED:
def reverse_words(sentence)
  if sentence != ("")
    array = sentence.split(" ").map!{|x| x.reverse}.join(" ")
  else sentence
  end
end

=begin
__________
Assert Statements - INCOMPLETE


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


=begin FizzBuzz - COMPLETE
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

# def super_fizzbuzz(array)
#   array.map! {|i|
#     if (i % 15 == 0)
#         "FizzBuzz"
#     elsif (i % 3 == 0) && (i % 5 != 0)
#       "Fizz"
#     elsif (i % 5 == 0)
#       "Buzz"
#     else
#       i
#     end
# }
# end

=begin
______________
PezDispenser - INCOMPLETE
# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


=begin Pseudocode
Pez dispenser = an array, the elements are flavors
Perhaps creating a new pez dispenser pulls randomly a group of flavors into an array of 20 pieces.
You can pull (GET) one pez at a time from the dispenser, that removes that flavor from the array.
You can add (SET?) one pez to the end of the array.
You can view all of the elements in the array (all the pez flavors in the dispenser) in the order in which they'll be dispensed.
We need: An array, flavors that will be in the array in a random order
        Methods: to pull one that removes the first element from the array
                -to add one to the end of the array.
                -to list all of the elements of the array in order

# Initial Solution
=end
class PezDispenser

  def initialize
    @flavors = ["cherry", "apple", "grape", "strawberry", "lemon", "lime", "root beer"]
  end

  def create
    @pez_array = @flavors.sample(5)
  end

  def count
    @pez_array.length
  end

  def eat
    @pez_array.shift
  end

  def add
    @pez_array.push(@flavors.sample)
  end

  def view
    puts @pez_array
  end
end

pez_1 = PezDispenser.new
pez_1.create
pez_1.count
pez_1.eat
pez_1.add
pez_1.view

# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
#
# flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
# super_mario = PezDispenser.new(flavors)
# puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
# puts "Here's a look inside the dispenser:"
# puts super_mario.see_all_pez
# puts "Adding a banana pez."
# super_mario.add_pez("banana")
# puts "Now you have #{super_mario.pez_count} pez!"
# puts "Oh, you want one do you?"
# puts "The pez flavor you got is: #{super_mario.get_pez}"
# puts "Now you have #{super_mario.pez_count} pez!"
#



# Reflection

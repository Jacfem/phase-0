
=begin
4.3.1 Formatted Address Link:
https://github.com/Jacfem/phase-0/blob/master/week-4/address/my_solution.rb

4.3.2 Defining Math Link:
https://github.com/Jacfem/phase-0/blob/master/week-4/math/my_solution.rb
=end

=begin
Full name greeting:
Write a program that asks for a person's first name, then middle, then last.
Finally, it should greet the person using their full name.
=end

puts "Hi! What is your first name?"
  first_name = gets.chomp
puts "What is your middle name?"
  middle_name = gets.chomp
puts "What is your last name?"
  last_name = gets.chomp

full_name = first_name + " " + middle_name + " " + last_name
puts "Great to meet you, " + full_name + "!"

=begin
Bigger, better favorite number:
Write a program that asks for a person's favorite number.
Have your program add 1 to the number,
and then suggest the result as a bigger and better number.

Pseudocode: Ask for a number
Record number as integer in order to do addition
Add one to that number
Record new number
Convert new number to string
Return suggestion of new number as a better number
=end

puts "What is your favorite number?"
  favorite_num = gets.chomp.to_i
  better_num = favorite_num + 1
puts "That's cool and all, but don't you think " + better_num.to_s + " is a bigger, better number?"

=begin
Reflection
How do you define a local variable?
Variables essentially 'point to' values.
Defining a local variable is as easy as naming the variable, and assigning a value to it with the equals sign.
Best practice for Ruby is to use lowercase for the first letter, and use an underscore (_) to separate words thereafter. For example, here I am defining the variable 'my_variable' and setting it equal to 5.
my_variable = 5

How do you define a method?
Defining a method is as simple as writing the letters def followed by the method name.
The next content will be the body of the method, followed by 'end' to tell ruby we're done defining the method.
When you then type the method name (what is after def and before the body of the code),
Ruby will perform the code in the method with any parameters specified.
Best practice is the same as for local variables: lowercase letters.

What is the difference between a local variable and a method?
A local variable is used to store a value. A method is used to store some code that will do something when called upon.

How do you run a ruby program from the command line?
Within your working directory, type 'ruby filename.extension' to run your ruby program.

How do you run an RSpec file from the command line?
Within your working directory, type 'rspec filename.extension' to run your RSpec file.

What was confusing about this material? What made sense?
I'm still confused about the interaction of rspec & ruby files, but I understand their purposes much more as I use them more.

=end

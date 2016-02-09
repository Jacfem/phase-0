#Full name greeting:
#Write a program that asks for a person's first name, then middle, then last.
#Finally, it should greet the person using their full name.


puts "Hi! What is your first name?"
  first_name = gets.chomp
puts "What is your middle name?"
  middle_name = gets.chomp
puts "What is your last name?"
  last_name = gets.chomp

full_name = first_name + " " + middle_name + " " + last_name
puts "Great to meet you, " + full_name + "!"



#Bigger, better favorite number:
#Write a program that asks for a person's favorite number.
#Have your program add 1 to the number,
#and then suggest the result as a bigger and better number.

#Pseudocode: Ask for a number
#Record number as integer in order to do addition
#Add one to that number
#Record new number
#Convert new number to string
#Return suggestion of new number as a better number

puts "What is your favorite number?"
  favorite_num = gets.chomp.to_i
  better_num = favorite_num + 1
puts "That's cool and all, but don't you think " + better_num.to_s + " is a bigger, better number?"

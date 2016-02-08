#Full name greeting:
#Write a program that asks for a person's first name, then middle, then last.
#Finally, it should greet the person using their full name.


puts "Hi! What\'s your first name?"
  first_name = gets.chomp
puts "Awesome! What\'s your middle name?"
  middle_name = gets.chomp
puts "And I bet you have a last name! Which is?"
  last_name = gets.chomp
  full_name = first_name + ' ' + middle_name + ' ' + last_name
puts "Great to meet you, '+ full_name + '!"

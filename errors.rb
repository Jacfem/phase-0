# Analyze the Errors

# I worked on this challenge by myself.
# I spent 1 hour on this challenge.

# --- error -------------------------------------------------------

#cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

=begin def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end
=end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
#  170
# 3. What is the type of error message?
#  syntax error
# 4. What additional information does the interpreter provide about this type of error?
#  unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
#  Before the 'end'
# 6. Why did the interpreter give you this error?
# I think we need another 'end' - one for ending the definition of the method, and one for ending the while loop.

# --- error -------------------------------------------------------

#my_var = south_park

# 1. What is the line number where the error occurs?
# 37
# 2. What is the type of error message?
#  '<main>': undefined local variable or method `south_park' for main:Object (NameError)
# 3. What additional information does the interpreter provide about this type of error?
# It's a name error
# 4. Where is the error in the code?
# The error is by just typing 'south_park'
# 5. Why did the interpreter give you this error?
# We were trying to use a variable that we did not declare. We can fix this by declaring it my_var for example.

# --- error -------------------------------------------------------

# def cartman()

# 1. What is the line number where the error occurs?
# 52
# 2. What is the type of error message?
# `<main>': undefined method `cartman' for main:Object (NoMethodError)
# 3. What additional information does the interpreter provide about this type of error?
# It says no method error
# 4. Where is the error in the code?
# I believe not putting 'def' before cartman is the error.
# 5. Why did the interpreter give you this error?
# We did not define our method, but ruby saw that cartman took an argument, so let us know there was no method to perform. We can fix this by adding 'def' to the beginning of the line, which defines our method.

# --- error -------------------------------------------------------
=begin
def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase
=end
# 1. What is the line number where the error occurs?
# 67
# 2. What is the type of error message?
# in `cartmans_phrase': wrong number of arguments (1 for 0) (ArgumentError)	from errors.rb:71:in `<main>'
# 3. What additional information does the interpreter provide about this type of error?
# cartmans_phrase does not take any arguments as it is defined in our code, but we tried to pass it an argument.
# 4. Where is the error in the code?
# after we call cartmans_phrase, we should not pass it any arguments. The method itself puts "I'm not fat; I'm big-boned" when called.
# 5. Why did the interpreter give you this error?
# We provided 1 argument for a method that does not take any arguments. We can fix this by removing the argument called after cartmans_phrase.

# --- error -------------------------------------------------------
=begin
def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("I hate you!")
=end
# 1. What is the line number where the error occurs?
# 86
# 2. What is the type of error message?
# in `cartman_says': wrong number of arguments (0 for 1) (ArgumentError)	from errors.rb:90:in `<main>'
# 3. What additional information does the interpreter provide about this type of error?
# It's an Argument Error
# 4. Where is the error in the code?
# after we call cartman_says and do not pass it any arguments.
# 5. Why did the interpreter give you this error?
# This is the reverse of our last error: We did not call cartman_says with the proper number of arguments passed to it. It takes one argument, so we need to pass it one.
# We can fix this by passing it an argument - I passed it ("I hate you!")


# --- error -------------------------------------------------------
=begin
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Cartman')
=end
# 1. What is the line number where the error occurs?
# 107
# 2. What is the type of error message?
# in `cartmans_lie': wrong number of arguments (1 for 2) (ArgumentError) from errors.rb:111:in `<main>'
# 3. What additional information does the interpreter provide about this type of error?
# It is an Argument Error
# 4. Where is the error in the code?
# When we call cartmans_lie.
# 5. Why did the interpreter give you this error?
# we only passed it one argument, but it takes two. We can fix this by passing it a name argument, as seen above. The exclamation point is incorrect grammar but I kept it in!

# --- error -------------------------------------------------------
=begin
5.times do
  puts "Respect my authoritay!"
end
=end
# 1. What is the line number where the error occurs?
# 126
# 2. What is the type of error message?
# in `*': String can't be coerced into Fixnum (TypeError) from errors.rb:126:in `<main>'
# 3. What additional information does the interpreter provide about this type of error?
#  It's a Type Error
# 4. Where is the error in the code?
# With the asterisk symbol
# 5. Why did the interpreter give you this error?
# Ruby is trying to do math with an integer and a string. It appears we want to print that string five times, so we can fix this by typing 5.times"string" as seen above. We also need to add 'do' and 'end' so that the piece of code inside that is iterated 5 times.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0.0


# 1. What is the line number where the error occurs?
# 143
# 2. What is the type of error message?
# in `/': divided by 0 (ZeroDivisionError) from errors.rb:143:in `<main>'
# 3. What additional information does the interpreter provide about this type of error?
# It's a Zero Division Error
# 4. Where is the error in the code?
# The 0
# 5. Why did the interpreter give you this error?
# Ruby raises this error whenever you try to divide by 0. If we change it to a float (0.0), we will not get this error and will instead get an answer that says infinity.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 159
# 2. What is the type of error message?
# in `require_relative': cannot load such file -- /Users/jaclynfeminella/DBC Work/phase-0/cartmans_essay.md (LoadError) from errors.rb:159:in `<main>'
# 3. What additional information does the interpreter provide about this type of error?
# It cannot load the file we wrote.
# 4. Where is the error in the code?
# In the file name.
# 5. Why did the interpreter give you this error?
# I do not have this file in my local drive, so it cannot find it.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?

The 5*"Respect my authoritay!" error was most difficult to read. Up until then, I felt like I knew the syntax errors,
but I wasn't sure how to reconcile the number/string issue at first.

How did you figure out what the issue with the error was?

I looked in Chris Pine's book and remembered reading about the .times iterator, so used 5.times on this to puts it 5 times.

Were you able to determine why each error message happened based on the code?

I was! It was a good feeling to be able to troubleshoot these problems. It is a bit confusing when it feels like there could be more than one solution, but most of these were cut and dry.

When you encounter errors in your future code, what process will you follow to help you debug?

I will follow this process of looking at the file/line that it's experiencing the error, looking at the type of error & reading the error message carefully.

=end

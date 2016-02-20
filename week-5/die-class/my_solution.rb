# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 1.5 hours on this challenge.

# 0. Pseudocode

# Input: Calling the method and passing it a number
# Output: A side of the die (a number)
# Steps:
#Define a class
#Define a method that takes sides as parameter.
#Raise an error if the number passed for sides is not at least 1
#Store the number passed as sides in an instance variable
#Define a method that will randomly choose a number from sides


# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Dice need at least one side")
    else
      return @sides = sides
    end
end

  def sides
    return @sides
  end

  def roll
    result = rand(@sides) + 1
    return result
  end
end

# 3. Refactored Solution - Remove unneeded 'return' words
class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Dice need at least one side")
    else
      @sides = sides
    end
  end

  def sides
    @sides
  end

  def roll
    result = rand(@sides) + 1
  end
end

=begin 4. Reflection

1. An argument error is raised when the arguments passed in a method are wrong, either by not passing it
the proper amount of arguments, or an unacceptable argument. In our case, we could get an argument error if we
don't pass the method any arguments, or if we pass it a number less than 1, as I raised in the code above.

2. New ruby methods? I used 'raise' for the first time, but otherwise did not use any new methods.

3. What's a ruby class? A ruby class is an object we can define that helps us define behaviors.

4. Why use one? Classes help you define specific behaviors that would happen if you used it. You need to define it with a class statement,
which is simply 'class Name' where Name is whatever you'd like to call it, and nest it through to an 'end' statement whenever you're done with the definition.
You write a method called 'initialize' which defines how we create an object.

5. What is the difference between a local variable and an instance variable? The difference is in their scope, where they're accessible to other objects.
A local variable is only available in the method it was defined in.
An instance variable is available anywhere in the class it was defined in.
Instance variables have a larger scope than local variables.

6. Where can instance variables be used? Instance variables can be used within the class
that they were defined in. They are not limited to just methods within the class, because we can create them
in one method, and use them again in another, as long as they are all nested in one class.

=end

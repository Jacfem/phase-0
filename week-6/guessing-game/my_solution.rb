# Build a simple guessing game


# I worked on this challenge by myself.
# I spent 30 minutes on this challenge.

# Pseudocode

# Input: An Integer
# Output: A true or false - Boolean
# Steps: Initialize method - Assign Answer variable
# Define guess and solved methods with instance variables
#Use if/else statements to compare the guess and answers
#Check if the game is solved if the guess equals the answer


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess

    if @guess > @answer
      return :high
    elsif @guess == @answer
      return :correct
    else
      return :low
    end
  end

    def solved?
      if @guess == @answer
        return true
      elsif @guess != @answer
        return false
      end
    end
end



# Refactored Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess

    if @guess > @answer
       :high
    elsif @guess == @answer
       :correct
    else
       :low
    end #created implicit return
  end

    def solved?
      if @guess == @answer
        return true
      else #took out the elsif statement since it's either true or false
        return false
      end
    end
end

=begin
# Reflection

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
Classes help us organize behaviors and data, containing instance variables and methods.
It's interesting to think of Biology and compare how the further down you get in the hierarchy of classification, the more specific you can get.
So, we start will all life forms (maybe compared as how everything in Ruby is an object), and move downward into more orders and classes(organized in Ruby as modules and classes), and each different class within the animal kingdom will have its own specific behaviors to them when compared to another class. 

When should you use instance variables? What do they do for you?
You should declare instance variables inside methods when you're working within a class that will need this data accessible across various methods (yet still in the same class).

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
Flow control is very clear now as it lays out various steps the code could take depending on certain conditions.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
Symbols can be beneficial if you want a unique value to be returned/stored, because if we had put a string of high, low or correct, those values are changeable.
Symbols stay the same forever, so they make sense as a static attribute we would call on for this type of guessing game.
They also do not consume any additional memory each time you use them, whereas strings would, so this can be more efficient if it suits us.
=end

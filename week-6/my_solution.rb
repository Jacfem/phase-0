# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 1 hour on this challenge.

=begin Pseudocode

# Input: List of arbitrary labels
# Output: A random string from the list of labels
# Steps: Define class
Define methods
Store strings in an Array
Access random items in array for our role via indexes.

=end
# Initial Solution

class Die
  def initialize(labels)
    if labels == []
      raise ArgumentError.new("Dice need at least one side")
    else
      @labels = labels
      @sides = labels.length
    end
  end

  def sides
    return @sides
  end

  def roll
    result = @labels.sample
    return result
  end
end

# Refactored Solution

class Die
  attr_reader :sides
  def initialize(labels)
    if labels == []
      raise ArgumentError.new("Dice need at least one side")
    else
      @labels = labels
      @sides = labels.length
    end
  end

  def roll
    result = @labels.sample #removed return and made implicit return
  end
end

# Reflection

=begin
What were the main differences between this die class and the last one you created in terms of implementation?
Did you need to change much logic to get this to work?
The only logic I needed to change was instead of picking a random number,
so I didn't need to add 1 because the index of sides was the number we were returning last week,
and arrays are 0 indexed.

What does this exercise teach you about making code that is easily changeable or modifiable?
It's incredibly helpful to have an outline of code that is changeable because you're not starting from scratch, and it's adaptable to build upon. It probably also makes it easier for suggestions and readability.

What new methods did you learn when working on this challenge, if any?
I learned the attr_reader method. This is a shortcut you can use when you're returning the value of the variable of the same name,
so I used that for the previous 'sides' method and variable.

What concepts about classes were you able to solidify in this challenge?
The ability to declare attr_reader prior to our initialization was new to me. It's useful to declare this variable as a read only variable, as it helps communicate the intent that we will not be setting or resetting the value of it.
This improves performance and also is shorthand from writing the following: 
def @method
@method
end

=end

#Attr Methods

# I worked on this challenge by myself.

# I spent 1.5 hours on this challenge.

=begin
Reflection

Release 1:
What are these methods doing?
They're injecting the instances of age, name, occupation defined in the initialize method
and interpolating them in to the print_info output. Then they're changing the output for the final printed statements using setters.
It's also taking a pause (via 'sleep') in between printing each new line.

How are they modifying or returning the value of instance variables?
They created new instances of the variables via a 'setter' method.

Release 2:
What changed between the last release and this release?
attr_reader :age was added after creating the Class.
The method what_is_age was removed.

What was replaced?
The instance: p instance_of_profile.what_is_age changed to p instance_of_profile.age

Is this code simpler than the last?
Yes

Release 3:
What changed between the last release and this release?
attr_writer :age was added. def change_my_age was removed.
What was replaced?
The instance_of_profile.change_my_age was replaced with instance_of_profile.age.

Is this code simpler than the last?
Yes.

Release 4:
Refactored Code:
class Profile
# here is the change, we combined the attr_writer and attr_reader into one declaration: attr_accessor
  attr_accessor :age, :name, :occupation

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end

  def print_info
    puts
    puts "age: #{@age}"
    puts
    puts "name: #{@name}"
    puts
    puts "occupation: #{@occupation}"
    puts
  end


Release 5:
# Pseudocode

# Input: An instance of a Class
# Output: A greeting with my name.
# Steps: Create a Class, an attr reader method with the instance variable name, Initialize & set the name variable.
Create another class, with initialize & greet methods, which will interpolate the new instance of the first class as our name.
Create an instance of the 2nd class, and greet.

=end
class NameData
  attr_reader :name
  def initialize
    @name = "Jackie"
  end
end


class Greetings
  def initialize
     @namedata = NameData.new
   end

   def greet
     puts "Hello, how wonderful to see you today, #{@namedata.name}."
   end
 end

greeting = Greetings.new
greeting.greet


=begin
Reflection:
What is a reader method?
A reader method can be thought of as a method that helps us access information throughout a class.
It's also known as a 'getter' method.
It takes symbols as arguments, and creates a method with an instance variable as the name of your symbol.
Creating a reader method can save the redundancy of writing methods and instance variables of the same name, repeatedly for various methods/variables.

What is a writer method?
A writer method is also a method that helps us access information.
It's also known as a 'setter' method.
This is used if you're going to want to change the values of the symbols you pass into it. For example,
we would perhaps want to make a method for ticket prices, which will vary depending on discounts/dates.

What do the attr methods do for you?
Attr methods help us store & retrieve information throughout classes in a less wordy format than if we were to manually write out methods for each piece of information we wanted to have available.

Should you always use an accessor to cover your bases? Why or why not?
If you will need to access instance variables in multiple methods throughout a class, it's very helpful to use an accessor for these variables.

What is confusing to you about these methods?
Defining the initialize method confused me at first. Whenever Ruby creates a new object, it will execute what is in this initialize method.
So, it can be useful for setting instance variable default values, or passing a code block that should be completed immediately when an instance of the Class is created.
I would like to learn more about this though, it's still more of a formality to do than something I fully understand.


=end

# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Katherine Broner.
# I spent 3 hours on this challenge.

#Credit Card

# Pseudocode

# Input: Credit card number
# Output: If the credit card is valid or not (true or false)
# Steps:
# Create a class called CreditCard
# read the credit card number (variable will be called credit_card_number)
  #attr_reader :ccnum
# initialize a method for credit_card_number
  # def initialize(ccnum)
  #  @ccnum = ccnum.to_s
  #  print ccnum
# create argument argument error if ccnum is not 16 digits
  #check the length
# write a method to separate each number (with spaces and no commas), put this in a list (array)
# iterating over index to double every other digit starting at second to last.
  # even index numbers if going backwards
# split the digits into single digits
# add the digits together
# check if total is divisible by 10 (modulo)
# return true is cc is valid and false if not

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits
=begin
class CreditCard
  attr_reader :ccnum

  def initialize(ccnum)
    @ccnum = ccnum.to_s.split('').map(&:to_i)
    if @ccnum.length != 16
    raise ArgumentError.new("This credit card number is not 16 digits.")
  else puts "That's the right length!"
    end
  end

  def double_digit
    digits = @ccnum.length
    position = -2
    while position >= -digits
      @ccnum[position] = @ccnum[position] * 2
      position -= 2
    end
    #p ccnum
  end

  def check_card
    double_digit
    @ccnum = ccnum.to_s.split('').map(&:to_i)
    #p ccnum
    sum = 0
    @ccnum.each { |num| sum += num }
    #return sum
    if sum % 10 == 0
      return true
    else
      return false
    end
  end

end
=end
# Refactored Solution


class CreditCard
  attr_reader :ccnum

  def initialize(ccnum)
    @ccnum = ccnum.to_s
    raise ArgumentError.new("This credit card number is not 16 digits.") unless @ccnum.length == 16
    end

  # def double_digit
  #   digits = @ccnum.length
  #   position = 1
  #   while position.abs <= digits
  #     @ccnum[position] = @ccnum[position] * 2
  #     position += 2
  #   end
  #   #p ccnum
  # end

  def check_card
    @ccnum = @ccnum.reverse!.split('').map!.with_index do |num, index|
      if index.odd?
        (num.to_i * 2).to_s
      else
        num
      end
    end
    sum = 0
    @ccnum.join.split('').each { |num| sum += num.to_i }
    #return sum
    if sum % 10 == 0
       true
    else
       false
    end
  end
end #From Class


# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
The most difficult part of this challenge was figuring out how to properly split, double & add the separate integers.

What new methods did you find to help you when you refactored?
I found that using reverse on the credit card number in order to not traverse backward through the array's indexes felt cleaner, but it didn't necessarily change the functionality.

What concepts or learnings were you able to solidify in this challenge?
We didn't know we were able to call a method within another method. We ended up doing that with the separate double_digit method we wrote,
and called that into our check_card method since that was not in the driver code that DBC is testing.






=end

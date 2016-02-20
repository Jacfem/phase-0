# Calculate the mode Pairing Challenge

# I worked on this challenge with Afaan Naqvi

# I spent 1 hour on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# 0. Pseudocode

# What is the input?
  # An array of either numbers or strings
# What is the output? (i.e. What should the code return?)
  # An array of the most frequent value(s)
# What are the steps needed to solve the problem?
  # Define our method
  # Allow for an argument of an array
  # Create a hash with default value 0
  # Iterate through the array and store the elements into the keys of the hash
  # and the counter into the values of the hash
  # Search through hash for the highest value
    # Look through the values of the hash, find the maximum value
    # Using this maximum value, locate and grab the corresponding keys
    # Put those keys into an array
  # Use the highest value to send the corresponding key to an output array
  # Output the array

# 1. Initial Solution

def mode(array)
  mode_hash = Hash.new(0)
  array.each do |n|
    mode_hash[n] += 1
  end
  max = mode_hash.values.max
  output_array = []
  mode_hash.each do |k, v|
    if v == max
      output_array << k
    end
  end
  p output_array
end

# 3. Refactored Solution

def mode(array)
  mode_hash = Hash.new(0)
  array.each {|n| mode_hash[n] += 1}
  max = mode_hash.values.max
  output_array = mode_hash.map {|k, v| if v == max then k end}
  p output_array.compact
end


=begin
4. Reflection

1. Which data structure did you and your pair decide to implement and why?
We implemented an array for the initial parameter, and a hash to store corresponding values of each item's occurrence quantity from that array.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
Yes. We clearly communicated which lines of psuedocode would require more research, and did our best to break it down
as thoroughly as possible in our psuedocode.

What issues/successes did you run into when translating your pseudocode to code?
We ran into seeing 'nil' values in our array if the keys did not meet the mode criteria, but found that calling the compact method on our array eliminated the nil values.
We found initial success with our first solution, but found difficulty re-factoring and finding more efficient methods besides map and compact. 

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
We used each/do to iterate through our original array and count the amount of occurrences for each item.
We also used map to iterate through our hash because it would return an array, which is what we wanted our output to be.


=end

# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 2
# ============================================================
#p hash[:outer][:inner][:almost][3]
p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 2
# ============================================================
#p nested_data[array:][1][hash:]
p nested_data[:array][1][:hash]

# ============================================================

number_array = [5, [10, 15], [20,25,30], 35]
number_array.map! {|element|
  if element.kind_of?(Array)
    element.map! {|inner| inner + 5}
  else
   element + 5
  end
}
 p number_array


# Bonus:
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
p startup_names.flatten.map! {|element| element.to_s + "ly"}

=begin

# First trial that did not work:
# startup_names[1][2].map! {|element| element.to_s + "ly"}
# ​
#  startup_names.map! { |element|
#    element.to_s + "ly"
#    unless element.kind_of?(Array)
#      startup_names[1].map! {|inner| inner.to_s + "ly"}
#      unless element.kind_of?(Array)
#        p startup_names[1][2]
#        #{|inner| inner.to_s + "ly"}
#      end
#    #   until
#    #     element.kind_of?(Array)
#    #   end
#    # elsif element.kind_of?(Array)
#    #   element.map! {|new_inner| new_inner.to_s + "ly"}
#    end
 #}
​
# p startup_names


What are some general rules you can apply to nested arrays?
In general, you can access nested arrays by moving deeper layer by layer, and doing so by accessing each index consecutively.
You would call it as so:
array[first index you need to move to][second index you need to move to] and so forth, basically traveling & stopping at each nested level that gets you closer to the one you're looking for.

If you need modify every element in a nested array, you can 'flatten' it either completely or by various levels (by specifying which levels in flatten(# goes here)).
This essentially un-nests the inner arrays.

What are some ways you can iterate over nested arrays?
You can use #map! to iterate over arrays or flatten the nested arrays in order to un-nest them.

Did you find any good new methods to implement or did you re-use one you were already familiar with?
What was it and why did you decide that was a good option?
I was familiar with #map! and we used that because its return value is an array.
We also used flatten in order to modify all of the words by adding 'ly' to each one.


=end

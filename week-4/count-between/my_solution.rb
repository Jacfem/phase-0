# Count Between

# I worked on this challenge by myself.

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  if list_of_integers == []
    return 0
  elsif upper_bound < lower_bound
    return 0
  elsif upper_bound == lower_bound
    return list_of_integers.count
  elsif (list_of_integers.max >= upper_bound) && (list_of_integers.min >= upper_bound)
    return 0
  elsif (list_of_integers.max <= upper_bound) && (list_of_integers.min >= lower_bound)
    return list_of_integers.count
  elsif (list_of_integers.max <= upper_bound) && (list_of_integers.min <= lower_bound)
    return list_of_integers.count - 1
  elsif (list_of_integers.max >= upper_bound)
    return list_of_integers.count - 1
  end
end

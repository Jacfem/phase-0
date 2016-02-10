
# Leap Years

# I worked on this challenge by myself.


# Your Solution Below

def leap_year?(num)
  if num % 4 == 0 && num % 100 != 0
  true
  elsif num % 400 == 0
    true
  elsif num % 4 == 0 && num % 100 == 0 && num % 400 != 0
    false
  elsif num % 4 != 0
    false
  end
end

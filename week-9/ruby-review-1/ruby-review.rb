# Create a Bingo Scorer
# I worked on this challenge with Ryan Dempsey

# I spent 3 hours on this challenge.

# Pseudocode
# input: bingo board
# output: boolean value and success/failure message

# - create a class
#   -dealing with integers
#   -convert to string for iteration?
#   -check each row
#     -iterate through each row
#     -if we find 5 'X's in each row == true/success
#   -check each column
#     -use transpose to iterate through columns
#     -
#   -check both possible diagonals
#     -through each row's indexes, check for X's

#INITIAL SOLUTION
# class Bingo_checker
#
#   def initialize(board)
#     @board = board
#     @x_array = ['x', 'x', 'x', 'x', 'x']
#   end
#
#   def check_row
#     @board.each. do |row|
#       if row == @x_array
#         puts "Congrats!"
#         true
#       elsif row != @x_array
#         puts "Sorry!"
#         false
#       end
#     end
#   end
#
#   def check_column
#     transposed_array = @board.transpose
#     transposed_array.each do |row|
#       if row == @x_array
#         puts "Congrats!"
#         true
#       elsif row != @x_array
#         puts "Sorry!"
#         false
#       end
#     end
#   end
#
#   def check_right_to_left_diagonal
#     if @board.map.each_with_index {|row, i| row[i]} == @x_array
#       puts "Congrats"
#       true
#     else puts "Sorry!"
#       false
#     end
#   end
#
#   def check_left_to_right_diagonal
#     if @board.reverse.map.each_with_index {|row, i| row[i]} == @x_array
#       puts "Congrats!"
#       true
#     else puts "Sorry!"
#       false
#     end
#   end
#
# end #For Class

# Driver code:
# new_board = Bingo_checker.new(horizontal)
# new_board.check_row

# Refactored Solution

class Bingo_checker

  def initialize(board)
    @board = board
    @x_array = ['x', 'x', 'x', 'x', 'x']
  end

  def check_board
    check_row? || check_column? || check_right_to_left_diagonal? || check_left_to_right_diagonal? ? (puts "BINGO!") : (puts "SORRY!")
  end

  def check_row?
    @board.any? {|row| row == @x_array}
  end

  def check_column?
    @board.transpose.any? {|column| column == @x_array}
  end

  def check_right_to_left_diagonal?
    @board.each_with_index.map {|row, i| row[i]} == @x_array
  end

  def check_left_to_right_diagonal?
    @board.reverse.each_with_index.map {|row, i| row[i]} == @x_array
  end

end #Class

# new_board = Bingo_checker.new(left_to_right)
# new_board.check_board

# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:
# sample boards

# horizontal = [[47, 44, 71, 8, 88],
#               ['x', 'x', 'x', 'x', 'x'],
#               [83, 85, 97, 89, 57],
#               [25, 31, 96, 68, 51],
#               [75, 70, 54, 80, 83]]
#
# vertical = [[47, 44, 71, 'x', 88],
#             [22, 69, 75, 'x', 73],
#             [83, 85, 97, 'x', 57],
#             [25, 31, 96, 'x', 51],
#             [75, 70, 54, 'x', 83]]
#
#
# right_to_left = [['x', 44, 71, 8, 88],
#                  [22, 'x', 75, 65, 73],
#                  [83, 85, 'x', 89, 57],
#                  [25, 31, 96, 'x', 51],
#                  [75, 70, 54, 80, 'x']]
#
#
# left_to_right = [[47, 44, 71, 8, 'x'],
#                   [22, 69, 75, 'x', 73],
#                   [83, 85, 'x', 89, 57],
#                   [25, 'x', 96, 68, 51],
#                   ['x', 70, 54, 80, 83]]


# Reflection

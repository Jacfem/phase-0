# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 5 hours on this challenge.

=begin
# Release 0: Pseudocode

#
  Create a hash with Keys BINGO and the values are the numbers on the board.
  Will create columns into different values for each letter.
  Randomly sample from letter/number array to output a Bingo value
  Check the Bingo Board (the HASH) for if this value is on the board.
  IF it is, Replace the Bingo value with an X.
  Display the new board whether an X was added or not.

# Check the called column for the number called.
  Check the B I N G or O columns to see if it contains the number.

# If the number is in the column, replace with an 'x'
  if THE LETTER FROM THE HASH HAS ANY VALUES OF THAT NUMBER
  #Check if the hash contains one of these numbers in a column
  #Remove that number and in its place put an X

# Display a column to the console
  #Display column with the chosen letter
  #Optionally display the column with the number replaced with X

# Display the board to the console (prettily)
  #Not sure yet


# Initial Solution
class BingoBoard
  attr_reader :letter, :number, :board_array

  def initialize #(letter, number) Do we need this? I don't see how we could call the instance of the class and pass it arguments because it has to be random.
      @letter = letter
      @number = number
      @board_array = board_array
  end

  def call #appears to be working & giving us a random letter/number each time
    letter_array = ["B", "I", "N", "G", "O"]
    num_array = (1..100).to_a
    @letter = letter_array.sample
    @number = rand(1..100)
    call = @letter + @number.to_s
    p call
    return @number
  end

  def check
    @board_array = [["B", "I", "N", "G", "O"],
                    [47, 44, 71, 8, 88],
                    [22, 69, 75, 65, 73],
                    [83, 85, 97, 89, 57],
                    [25, 31, 96, 68, 51],
                    [75, 70, 54, 80, 83]]
        if @letter == "B"
          letter_called = 0
        elsif @letter == "I"
          letter_called = 1
        elsif @letter == "N"
          letter_called = 2
        elsif @letter == "G"
          letter_called = 3
        elsif @letter == "O"
          letter_called = 4
        end #From if statement

        index = 1 #Iterating through for each letter's column
        while index <= 5
          if @board_array[index][letter_called] == @number
            @board_array[index][letter_called] = "X"
          end #From if statement
        index += 1
      end #From while loop
  end #From Method check

      def display
        #board_array = board_array.to_s.split('').map(:&to_i)
        puts @board_array[0].join("  ")
        puts "--------------"
        index = 1
        while index <= 5
          puts @board_array[index].join(" ")
          index +=1
        end #From while loop
      end #From Method display

end #From Class

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
new_game = BingoBoard.new#(board)
new_game.call
new_game.check
new_game.display
board = [[47, 44, 71, 8, 88],
       [22, 69, 75, 65, 73],
       [83, 85, 97, 89, 57],
       [25, 31, 96, 68, 51],
       [75, 70, 54, 80, 83]]
=end

# Refactored Solution

class BingoBoard
  attr_reader :letter, :number, :board_array

  def initialize
  end

  def call
    @letter = ["B", "I", "N", "G", "O"].sample
    @number = rand(1..100)
    call = @letter + ", " + @number.to_s
    puts "We got: " + call
  end

  def check #Is there a way I can not write this out and use what the board is in Drivers code?
    @board_array = [["B", "I", "N", "G", "O"],
                    [47, 44, 71, 8, 88],
                    [22, 69, 75, 65, 73],
                    [83, 85, 97, 89, 57],
                    [25, 31, 96, 68, 51],
                    [75, 70, 54, 80, 83]]
        if @letter == "B"
          letter_called = 0
        elsif @letter == "I"
          letter_called = 1
        elsif @letter == "N"
          letter_called = 2
        elsif @letter == "G"
          letter_called = 3
        elsif @letter == "O"
          letter_called = 4
        end #From if statement

        index = 1 #Iterating through for each letter's column
        while index <= 5
          if @board_array[index][letter_called] == @number
            @board_array[index][letter_called] = "X"
          end #From if statement
        index += 1
      end #From while loop
  end #From Method check

      def display
        #board_array = board_array.to_s.split('').map(:&to_i)
        puts @board_array[0].join("  ")
        puts "--------------"
        index = 1
        while index <= 5
          puts @board_array[index].join(" ")
          index +=1
        end #From while loop
      end #From Method display

end #From Class

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
new_game = BingoBoard.new#(board)
new_game.call
new_game.check
new_game.display
board = [[47, 44, 71, 8, 88],
       [22, 69, 75, 65, 73],
       [83, 85, 97, 89, 57],
       [25, 31, 96, 68, 51],
       [75, 70, 54, 80, 83]]




=begin
#Reflection
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
Psuedocoding was actually really fun for this solution, but I started with the idea of using a hash so that each key would be one of BINGO, and each number would be the columns.
This ended up not working.
However, logically writing out all of the steps for this was the more simple part. Implementing them took more time.

What are the benefits of using a class for this challenge?
Using a class in this challenge is vital because we needed to access several values throughout all methods: letter, number, and the array for the board.
Modifying the bingo board with an 'X' if there was a match and then being able to print it in a different method was thanks to using a class.

How can you access coordinates in a nested array?
You can access coordinate in nested arrays as if you would access one index, but you keep speciying the location of the next layer.
So, say we wanted to access "Yep, Still Second" in the following example:
nested_array = [["Zero"],["First", "Still First", ["Second", "Still Second", "Yep, Still Second"]]]
We would navigate through the layers as so:
p nested_array[1][2][2]

What methods did you use to access and modify the array?
I used loops to iterate through the elements in the array.
I used element assignment to replace the number with an X if it was called in the appropriate column.
I used join to remove the commas in the arrays for a better printed solution.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
Join was very helpful for printing out the board more nicely. I joined the letters & numbers by a space to remove the commas from the array, and used a loop to do this for each element in the arrays.

How did you determine what should be an instance variable versus a local variable?
For anything I needed across multiple methods, I used an instance variable, such as @letter, @number, and @board_array.
For anything I only needed in one method, I used a local variable, such as letter_called or index.

What do you feel is most improved in your refactored solution?
My call method is much simpler and prints the chosen letter/number to the console.


=end

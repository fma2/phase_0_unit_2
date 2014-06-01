# U2.W6: Create a BoggleBoard Class


# I worked on this challenge with Daniel Deepak.


# 2. Pseudocode
# Set Class

# Define method initialize, method takes argument(board)
 
# Define method create_word
# Use .map to iterate 

# Define method get_row, method takes 2 arguments
# Return row

# Define method get_column, method takes 2 arguments
# Use .map method to iterate row and column

# 3. Initial Solution
# class BoggleBoard
#   attr_reader :board, :row, :column_number
 
#   def initialize(board)
#       @board = board
#   end
  
#   def get_row(row)
#       @row = row
#       @board[row]
#   end
  
#   def get_column(column_number)
#       board.map {|element| element[column_number]}
#   end
  
#    def create_word(*coords)
#     coords.map { |coord| board[coord.first][coord.last]}.join("")
#   end
 
# end
 
# dice_grid = [["b", "r", "a", "e"],
#              ["i", "o", "d", "t"],
#              ["e", "c", "l", "r"],
#              ["t", "a", "k", "e"]]
 
# boggle_board = BoggleBoard.new(dice_grid)
 


# 4. Refactored Solution
class BoggleBoard
  attr_reader :board, :row, :column_number
 
  def initialize(board)
      @board = board
  end
  
  def get_row(row)
      board[row]
  end
  
  def get_column(column_number)
      board.map {|element| element[column_number]}
  end
  
   def create_word(*coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end

   # Optimize Your Learning
  def get_diagonal(*coords)
    coords.map { |coord| board[coord.first][coord.last]}
 	end
 	
end
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)



# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:
boggle_board_test = BoggleBoard.new(dice_grid)
p boggle_board_test.get_row(0) == ["b", "r", "a", "e"]
p boggle_board_test.get_column(1) == ["r", "o", "c", "a"]

p boggle_board_test.create_word([1,2],[1,1],[2,1],[3,2]) == "dock"

p boggle_board_test.create_word([3,2]) == "k"

p boggle_board_test.get_diagonal([0,0], [1,1], [2,2], [3,3]) == ["b","o","l","e"]


# 5. Reflection 

# I worked on this challenge in a pair.  I enjoyed that we were able to go back to last week’s work 
# and expand upon it--this practice reminded me of and deepened my learnings from last week.  
# Interestingly, when I first attempted the Boggle Board challenge last week, I tried to make a Class 
# but felt I was making the task more complicated than necessary and changed my solutions to methods.  

# Further, this challenge allowed me to expand upon my understandings of variables in classes.  My 
# pair and I initially included “board” as an argument in the methods get_row and get_column but 
# quickly found it unnecessary--we had called :board with attr_reader.  In terms of learning 
# competencies, this process of trial-and-error involved identifying when to use instance variables.

# In writing the driver code, our syntax for create_word and get_diagonal was not easy to write.  We 
# had trouble with including parentheses and brackets in the right spots.  I believe this was because 
# I did not have inexperience with using coordinates when calling a method; now that I know it is 
# possible to use coordinates when calling a method, I will be more comfortable doing so in the future
# .  
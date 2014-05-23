# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself.

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


#NO LONGER PART 1
# Part 1: Access multiple elements of a nested array 
# Pseudocode
# Initial Solution (from directions)
 def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end

  puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
  puts create_word(boggle_board, [0,1], [0,2], [1,2])  #=> creates what california slang word?

# Refactored Solution
#see above
# DRIVER TESTS GO BELOW THIS LINE
# Reflection 

#-------------------------------------------------------------------------------

# Part 1: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# Define method get_row to take two arguments: board & row
# Method returns board[row]
# End method

# Initial Solution

def get_row(board, row)
	return board[row]
end

p get_row(boggle_board, 1)

# Refactored Solution

#see above

# DRIVER TESTS GO BELOW THIS LINE


# Reflection 



#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# Initial Solution


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE


# Reflection 
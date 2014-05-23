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
#NO LONGER PART 1

#-------------------------------------------------------------------------------

# Part 1: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# Define method get_row to take two arguments: board & row
# Method returns board[row], where board is the array at which the method is looking, and row is the index that of that array that should be returned
# End method

# Initial Solution

def get_row(board, row)
	return board[row]
end

p get_row(boggle_board, 1)

# Refactored Solution

def get_row(board, row)
	return board[row]
end

# DRIVER TESTS GO BELOW THIS LINE

p get_row(boggle_board, 0) == ["b", "r", "a", "e"]
p get_row(boggle_board, 1) == ["i", "o", "d", "t"]
p get_row(boggle_board, 2) == ["e", "c", "l", "r"]
p get_row(boggle_board, 3) == ["t", "a", "k", "e"]


# Reflection 


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# Define method get_column to take two arguments: board & column_number
# #map board, to go through each array and print the element found in the column
# End method

# Initial Solution

def get_column(board, column_number)
	board.map {|element| p element[column_number]}
end

p get_column(boggle_board, 0)

# Refactored Solution

def get_column(board, column_number)
	board.map {|element| p element[column_number]}
end


# DRIVER TESTS GO BELOW THIS LINE


# Reflection 
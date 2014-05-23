# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input:
# class Die with argument sides

# Output:
# Number of sides
# Number rolled

# Steps:
# Within initialize method, define instance variable @sides
# Raise ArgumentError for when sides are less than 1
# End method
#
# Within sides method, return instance variable sides
# End method
#
# Within variable roll, return random number between 1 and number of sides
# End method
#
#End class

# 3. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    raise ArgumentError, 'Argument is less than 1' if sides < 1 
  end
  
  def sides
  	@sides
  end
  
  def roll
    rand(1..sides)
  end
end

die = Die.new(6)
die.sides # returns 6
die.roll # returns a random number between 1 and 6

# 4. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
    raise ArgumentError, 'Argument is less than 1' if sides < 1 
  end
  
  def sides
  	@sides
  end
  
  def roll
    rand(1..sides)
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE
# Check to see if >1 because raises an argument error if 0
p die.roll >= 1

# Check to see if >1 because raises an argument error if 0
p die.roll != 0

# Returns number of sides
die = Die.new(200)
	p die.sides == 200






# 5. Reflection 
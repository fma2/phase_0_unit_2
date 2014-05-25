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

# Before attempting this challenge, I researched classes.  I revisited the list resources provided last week on Ruby, watched available videos, and read and reread the provided Rubylearning.com article.  This strategy worked -- it led me to begin the challenge without hesitation.  I find that, when I am not sure what is possible with the language I must use, I am more reluctant to attempt to write the code.  Instead, in those cases, I find myself using Google to ask what is possible while I’m trying to write the code.  This can make the process incredibly frustrating at times; I am glad I was able to avoid this for this first challenge for this week.

# Unfortunately, even with research, I still did not initially place “raise ArgumentError” in the correct section of my code.  I need to research “raise” to understand the full scope of how and when it is used.

# I learned about the method rand( ) through this challenge.  The number of methods available in Ruby for strings, arrays, hashes, etc. still amazes me.  

# In regards to Learning Competencies, I was able to implement a basic ruby class and identify when to use instance variables.  I need to further research how instance variables differ from class variables--what are examples for using each?  This challenge was the beginning of understanding how instance variables and methods represent the characteristics and actions of an object.
# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.

# 2. Pseudocode

# Input:
# labels

# Output:
# Number of Sides
# Random String in array

# Steps:
# Define instance variable @labels as labels
# Raise ArgumentError for when array is empty
# End method
#
# Within sides method, return length of instance variable @labels
# End method
#
# Within variable roll, return random string (#sample) from #labels
# End method
#
#End class

# 3. Initial Solution

class Die
  def initialize(labels)
  	@labels = labels
  	raise ArgumentError, 'Argument is an empty array' if labels == []
  end

  def sides
  	@sides = @labels.length
  end

  def roll
  	@labels.sample
  end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
die.sides
die.roll


# 4. Refactored Solution

class Die
  def initialize(labels)
  	@labels = labels
  	raise ArgumentError, 'Argument is an empty array' if labels == []
  end

  def sides
  	@sides = @labels.length
  end

  def roll
  	@labels.sample
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE
# Raise ArgumentError if Array is empty
die = Die.new(["A","B","C","D","E","F"])
	p die.roll != []

# Returns number of sides which equals the length of the array
die = Die.new(["A","B","C","D","E","F"])
	p die.sides == 6

# Returns a single letter from array
random_letter = ('A'..'Z').to_a[rand(26)]
die = Die.new([random_letter])
	p die.roll == random_letter



# 5. Reflection 

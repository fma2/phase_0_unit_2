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

# Like the first challenge, I appreciated that I had researched classes in depth prior to attempting this challenge.  In the same vein, I took time to consider the differences between this die and the first challenge’s die before beginning to pseudocode.  This challenge also required “raise” which I have added to my list of “what to learn about when I get the time to do so”--I was able to include it as instructed in both challenges but would not know exactly how to apply it more widely in the future.   

# Further, how driver code was expected to look for the purposes of this unit & week in phase 0 finally clicked for me in this challenge.  Previously, I thought I needed to come up with something new for the driver code; for some reason, I had a hard time accepting that I could just use the content of the provided spec file.  I realized this was possible just because I arbitrarily chose to try it.

# This challenge had me use #length and #sample methods.  I have used both in prior challenges, but it was good to practice with them again. 


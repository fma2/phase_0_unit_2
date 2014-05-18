# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?

# A method with parameter array in which there will be an array of scores

# What is the output? (i.e. What should the code return?)

# The letter grade

# What are the steps needed to solve the problem?

# Create a method "get_grade" which takes "array" as the parameter
# Create variable to sum all of the scores
# Create variable "y" to divide the sum by the total number of scores
# Create if/then statements, if y >= 90, return "A" .. and so on
# End if/then method
# End "get_grade" method



# 2. Initial Solution

def get_grade(array)
	sum = 0
	x = array.inject{|sum,x| sum + x } 
  	y = x/array.length
	if y >= 90
		return "A"
	elsif y >= 80
		return "B"
	elsif y >= 70; 
		return "C"
	elsif y >= 60
		return "D"
	else 
		return "F"
	end
end


# 3. Refactored Solution

def get_grade(array)
average = (array.inject(:+) / array.length)
	if average >= 90
		"A"
	elsif average >= 80
		"B"
	elsif average >= 70
		"C"
	elsif average >= 60
		"D"
	else 
		"F"
	end
end


# 4. Reflection 
#There was a similar challenge to this one in the Ruby Labs Exercises.  I did not realize it until I started coding.  However, because I was able to write the initial code with ease, I gave more attention to refactoring.  Interestingly, when I find a challenge difficult, I notice that I test my code so often when writing initial code that I end up simplifying in that step; I find it difficult to refactor later on.  However, when I am able to easily pseudocode and code a challenge, the code consistently needs quite a bit of refactoring.  This was the case for this challenge; to complete this step, I think I need more examples of refactoring -- both with the before code and the after-refactored code.
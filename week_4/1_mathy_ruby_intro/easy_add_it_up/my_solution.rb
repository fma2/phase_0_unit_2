# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?

# For finding the sum of the array, the input is each number in the array.
# For creating a sentence out of the array, the input is each string in the array.

# What is the output? (i.e. What should the code return?)

# For finding the sum of the array, the output is one number, the total of all the numbers in the array added together.
# For creating a sentence out of the array, the output is a single string (sentence) with all of the strings joined.

# What are the steps needed to solve the problem?

# FINDING THE SUM FROM ARRAY
# Create a method "total" with parameter "array"
# Establish sum as 0
# Use .inject method on array
# In .inject method, establish 0 as initial 
# Define accumulator value as sum & element as i 
# End

# CREATING SENTENCE FROM ARRAY
# Create a method "sentence_maker" with parameter "array"
# Use .join method on array
# End

# 2. Initial Solution

def sentence_maker(array)
	array.join(" ").capitalize << "."
end 


def total(array)
	sum = 0
	array.inject(0) {|sum, i| sum + i}
end


# 3. Refactored Solution

def total(array)
	sum = 0
	array.inject {|sum, i| sum + i}
end

def sentence_maker(array)
	array.join(" ").capitalize << "."
end 

# # 4. Reflection 

# While reacquainting myself with Ruby, I found it helpful to use IRB in the command line to test out different methods for this challenge.  To practice methods, I referred to the information and exercises in the Ruby Labs and Exercises from pre-Phase 0.  I found it was easy to try a method by itself, but, in considering the order of methods to meet the requirements for this challenge, I had to test my code quite a bit.  I imagine this challenge is meant to be simple, so I am slightly disappointed in myself for spending so much time on it.  I hope it was related to my need to relearn the various methods in Ruby.
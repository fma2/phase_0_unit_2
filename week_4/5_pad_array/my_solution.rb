# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself.

# DIRECTIONS
# Implement Array#pad and Array#pad!. Each method accepts a minimum size (non-negative integer) and an optional pad value as arguments.
# If the array's length is less than the minimum size, Array#pad should return a new array padded with the pad value up to the minimum size.

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# Define class Array
# Define method "pad!"
# Method takes parameters pad_size and value = nil
# Define variable x as pad_size minus the count of elements in the array
# Create loop for value to be added at the end of self (the array) x number of times
# 
# Define method "pad"
# Clone self (the array)
# Implement .pad! on clone of self taking parameters pad_size and value

# 2. Initial Solution
class Array
	def pad!(pad_size, pad_item = nil)
		x = pad_size - self.size
		x.times do
	    	self << pad_item
	    end
	    self
	end
	  
	  def pad(pad_size, pad_item = nil)
	  self.clone.pad!(pad_size, pad_item)
	  end
end

# 3. Refactored Solution

class Array
	def pad!(pad_size, pad_item = nil)
		while  pad_size > length
			self << pad_item
		end
		self
	end
	def pad(pad_size, pad_item = nil)
		self.clone.pad!(pad_size, pad_item)
	end
end

# 4. Reflection 
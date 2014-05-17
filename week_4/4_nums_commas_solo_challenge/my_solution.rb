# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input? 
# An integer

# What is the output? (i.e. What should the code return?)
# A comma-separated integer as a string

# What are the steps needed to solve the problem?

# Create method "separate_comma" with takes "number" as argument
# Define variable x to be the number turned into a string and split into an array
# Define variable y to return the size of x
# Define if statement, if y < 4, print number as string
# Else
	# Reverse numbers in array ["0","0","0","0","0", "1"]
	# Slice the new array into 3 [["0","0","0"]["0","0", "1"]
	# Map for every three, joining them [["000"],["001"]]
	# Join groups of three with comma ["000,001"]
	# Reverse back ["100,000"]


# 2. Initial Solution

def separate_comma(number)
	x = number.to_s.split('')
	y = x.size
	if y < 4
		p number.to_s
	else 
		reversed_string = x.reverse
		sliced_string = reversed_string.each_slice(3)
		mapped_string = sliced_string.map(&:join)
		joined_string = mapped_string.join(",")
		p joined_string.reverse
	end
end

# 3. Refactored Solution



# 4. Reflection 
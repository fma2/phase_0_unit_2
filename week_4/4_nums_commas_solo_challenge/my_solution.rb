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

#Create method "separate_comma" with takes "number" as argument
# Use .to_s to make number a string  sample: ["100000"]
# Use .chars to separate each character in the string into an array ["1", "0","0","0","0","0",]
# Reverse numbers in array ["0","0","0","0","0", "1"]
# Slice the new array into 3 [["0","0","0"]["0","0", "1"]
# Map for every three, joining them [["000"],["001"]]
# Join groups of three with comma ["000,001"]
# Reverse back ["100,000"]


# 2. Initial Solution


# def separate_comma(number)
# 	number.to_s
# 	number.chars.to_a
# 	number.reverse
# 	number.each_slice(3)
# 	number.map(&:join) #How does this work?
# 	number.join(",")
# 	number.reverse
# end

# def separate_comma(number)
#    number.to_s.split(//).reverse.each_slice(3).map(&:join).join(",").reverse
# end

# 3. Refactored Solution
# def separate_comma(number)
#    number.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
# end



# 4. Reflection 
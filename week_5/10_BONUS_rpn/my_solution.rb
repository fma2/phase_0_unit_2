# U2.W5: Implement a Reverse Polish Notation Calculator


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Expressions written in reverse polish notation (RPN)

# Output:
# Evaluation of expressions written in RPN 

# Steps:
# Define class RPNCalculator
	# Define method initialize which takes rpn_expression as argument
	# End method

	# Define method check_operators
	# Split string into array
	# Iterate through each character
	# If character is an operator, move forward _ indices
	# Turn each string in array into integer, join



# 3. Initial Solution

class RPNCalculator
  def initialize (rpn_expression)
  	@rpn_expression = rpn_expression
  end
  def check_operators
  	@rpn_expression.split('')
  	@rpn_expression[0] + @rpn_expression[2] + @rpn_expression[1] if @rpn_expression.length == 3
  	@rpn_expression.map($:to_i).join('')
  end
end

# NOT FINISHED


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
calc = RPNCalculator.new('1 1 +')
puts calc.evaluate == (2)

calc = RPNCalculator.new('2 2 *')
puts calc.evaluate == (4)

calc = RPNCalculator.new('1 2 + 3 4 + *')
puts calc.evaluate == (21)



# 5. Reflection 

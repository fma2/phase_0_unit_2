# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself, with: ].


# Original Solution

# For this challenge, I will refactor the refactored solution for my own Week 5 Challenge 6 Validate Credit Card
# class CreditCard
#   def initialize(card_num)
#       @card_num = card_num
#       raise ArgumentError.new("Card must be 16 digits") if card_num.to_s.length != 16
#   end
#   def check_card
#       @card_num = @card_num.to_s.split('').map(&:to_i)
#       16.times do |index|
#           @card_num[index] *= 2 if index % 2 != 0
#       end
      
#       @digits_to_sum = []
#       @card_num.each do |element|
#           if element > 9
#               @digits_to_sum << 1 + (element % 10)
#           else
#               @digits_to_sum << element
#           end
#       end
              
#       digits_sum = 0
#       @digits_to_sum.each do |element|
#           digits_sum += element
#       end
      
#       digits_sum % 10 == 0
#    end
# end



# Refactored Solution

class CreditCard

	attr_reader :card_num, :array_to_check, :sum

  def initialize(card_num)
		@card_num = card_num.to_s.split('').map(&:to_i) #Moved split to initialize method
		@array_to_check = [] #Initialized empty array to place modified digits from card_num
		@sum = 0 #Initialized instance variable sum to use when adding up digits
		raise ArgumentError.new("Card must be 16 digits") if card_num.to_s.length != 16
  end

  def multiply_by_two #Parsed this step into its own method, method multiplies every other index by 2
    16.times do |index|
        @card_num[index] *= 2 if index % 2 == 0
  	end
	end

  def double_digits_to_one #Parsed this step into its own method, method takes double digits added together and places these new digits into array_to_check
  	card_num.each {|element| array_to_check << 1 + (element % 10) if element > 9}
  end

  def single_digits #Parsed this step into its own method, method takes single digits and places digits into array_to_check
  	card_num.each do |element|
  		array_to_check << element if element <= 9
  	end
  end

	def add_digits #Parsed this step into its own method, method adds all digits in array_to_check together
		array_to_check.each { |i| @sum += i }
	end

	def check_card #Check_card considers other methods and then checks if sum is divible by 10 - if it is returns, true, if not returns false
		multiply_by_two
		double_digits_to_one
		single_digits
		add_digits
	 	sum % 10 == 0
	end

end


# DRIVER TESTS GO BELOW THIS LINE

valid_card = CreditCard.new(4408041234567893)
invalid_card = CreditCard.new(4408041234567892)

def assert
  raise "Exception raised!" unless yield
end

assert {valid_card.check_card}
assert {invalid_card.check_card == false}



# Reflection 
# When working on the validate credit card challenge last 
# week, my pair and I considered making each step into its 
# own method but decided against it, as we were able to 
# get the code to work without this extra step.  I was 
# happy to see that this challenge required I revisit the 
# challenge from last week to take the extra step, 
# especially in light of the points I have read in POODR 
# on managing dependencies and planning for change.  

# In my solution, I was able to break down the steps into 
# different methods and added comments in the refactored 
# solution to keep myself on track.  Though I know better 
# code is easily readable without comments, I do not want 
# to remove them from this code.  I hypothesize it is 
# because the code as a whole is completing a complicated 
# task, for which it needs each of the steps--I want to be 
# able to easily see that all of the steps are there.  
# Notably, when I used single function methods for 
# challenge 4 playlist, I don’t feel the need for comments.
# I wonder if there is a way to resolve this discomfort 
# with challenge 5, knowing I do not have it for challenge 
# 4.

# Finally, revisiting assert statements for this challenge 
# inspired me to return to Challenge 1 to correct it.  I 
# realized that my driver tests did not actually test 
# whether the code was working.  
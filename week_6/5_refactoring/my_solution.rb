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
def assert_true(card_num)
	true if valid_card.check_card == true
end

invalid_card = CreditCard.new(4408041234567892)
def assert_false(card_num)
 	true if invalid_card.check_card == false
end

error_card = CreditCard.new(4408041234567892)
def assert_error(card_num)
	raise ArgumentError.new("Card must be 16 digits") if card_num.to_s.length != 16
end
assert_error(4408041234567893)
# assert_error(1) => Raises Argument Error


# Reflection 
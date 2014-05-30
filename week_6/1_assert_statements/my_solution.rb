# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# Raises error: 1_assert_statements fma2$ rspec my_solution.rb 
# /Users/fma2/phase_0_unit_2/week_6/1_assert_statements/my_solution.rb:9:in `assert': Assertion failed! (RuntimeError)

# Method assert is set to raise exception "Assertion failed" unless yield
# Set variable name as "bettysue"
# Assert is called, yield is "bettysue" - runs
# Assert is called, yield is "billybob" - raises exception

# 3. Copy your selected challenge here

# Week 5, Challenge 6, Validate Credit Card

class CreditCard
  def initialize(card_num)
      @card_num = card_num
      raise ArgumentError.new("Card must be 16 digits") if card_num.to_s.length != 16
  end
  def check_card
      @card_num = @card_num.to_s.split('').map(&:to_i)
      16.times do |index|
          @card_num[index] *= 2 if index % 2 != 0
      end
      
      @digits_to_sum = []
      @card_num.each do |element|
          if element > 9
              @digits_to_sum << 1 + (element % 10)
          else
              @digits_to_sum << element
          end
      end
              
      digits_sum = 0
      @digits_to_sum.each do |element|
          digits_sum += element
      end
      
      digits_sum % 10 == 0
   end
end

# # DRIVER TESTS GO BELOW THIS LINE
# valid_card = CreditCard.new(4408041234567893)
# puts valid_card.check_card == true

# invalid_card = CreditCard.new(4408041234567892)
# puts invalid_card.check_card == false

# # error_card = CreditCard.new(1234) # => raises ArgumentError

# puts valid_card.method(:initialize).arity == 1


# 4. Convert your driver test code from that challenge into Assert Statements

def assert_error
	raise "Card must be 16 digits!" unless yield 
end

card_num = 4408041234567893
assert_error { card_num == 4408041234567893 }
# assert_error { card_num == 4408041234567892 }


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

# 5. Reflection

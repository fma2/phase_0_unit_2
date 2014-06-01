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


valid_card = CreditCard.new(4408041234567893)
invalid_card = CreditCard.new(4408041234567892)

def assert
  raise "Exception raised!" unless yield
end

assert {valid_card.check_card}
assert {invalid_card.check_card == false}





# 5. Reflection

# I ended up doing this challenge twice.  The first time that I completed it, 
# #I wrote assert statements almost identical to the “bettysue” statements.  
# When attempting Challenge 5, I realized that the statements I had written for 
# Challenge 1 did not actually test the functionality of the class, so I 
# returned to this challenge to edit my work.  Truth be told, I am not 
# completely comfortable with assert statement syntax.  I researched how it 
# works, and I believe it confused me even more.  The documentation described 
# the different ways to write assert statements and the arguments they take but 
# did not look similar to the code I used in this challenge.  In terms of the 
# learning competencies, I was able to translate this particular driver code 
# into assert statements, but I cannot confidently say I will be able to do it 
# easily with other driver code.  

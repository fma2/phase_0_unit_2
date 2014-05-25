# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Alan Florendo.

# 2. Pseudocode

# Input:
# Credit Card with Number

# Output:
# Whether the card number is valid or invalid

# Steps:
# Create a class CreditCard 
  # Initialize card with 16-digit card number
  # Raise error if card is not 16 digits
  
  # Step 1: create double_element method
    # Step 1a: Convert credit card number string to array of characters
    # Step 1b: Double every even numbered element
  # Step 2: create sum_elements method
    # Step 2a:  If any element has two digits, add them together (12 = 1 + 2)
    # Step 2b: Sum all elements together
  # Step 3: Create check_card method. 
    # Return true if sum is a multiple of 10 (%10), otherwise false




# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
# class CreditCard
#   def initialize(card_num)
#       if card_num.to_s.length == 16
#          @card_num = card_num
#       else
#           raise ArgumentError.new("Card must be 16 digits")
#       end
#   end
  
#   def check_card
#       @card_num = @card_num.to_s.split('').map(&:to_i)
#       16.times do |index|
#           if index % 2 != 0
#               @card_num[index] *= 2
#           end
#       end
      
#       p @card_num
      
#       card_index = 0
#       @card_num.each do |element|
#           if element > 9
#               dummy = element.to_s.split('').map(&:to_i)
#               element = dummy[0] + dummy[1]
#               @card_num[card_index] = element

#           p dummy
#           p element

#           end
#           card_index += 1
#       end
      
#       p @card_num
      
#       digits_sum = 0
#       @card_num.each do |element|
#           digits_sum += element.to_i
#       end
      
#       p @card_num
      
#       if digits_sum % 10 == 0
#           true
#       else
#           false
#       end
      
          
#   end
      
# end


# 4. Refactored Solution


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


# 1. DRIVER TESTS GO BELOW THIS LINE
valid_card = CreditCard.new(4408041234567893)
puts valid_card.check_card == true

invalid_card = CreditCard.new(4408041234567892)
puts invalid_card.check_card == false





# 5. Reflection

# I worked on this challenge in a pair.  The provided directions were useful in starting our pseudocode.  Many of the 
# steps involved having the code do math--in retrospect, pseudocode seems easier to write when explaining how the 
# code should add, subtract, etc.  It was similarly simple to translate these pseudocode steps to code--so we thought.  

# When we ran the code, we encountered issues with how the elements in the array we created were understood--whether 
# each was a string or an integer--and with new variables that we wanted to access in a later loop.  What’s more, we 
# needed these elements to not always be a string or an integer.  For example, to add them together, they needed to 
# be integers.  However, for the code to find double-digit elements, we needed the elements to be strings.  It was a 
# problem I had not encountered in previous challenges; I appreciated the time we spent on it in this challenge, as I 
# will now be more conscious of this in the future.  

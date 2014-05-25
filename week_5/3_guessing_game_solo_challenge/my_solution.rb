# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself.

# 2. Pseudocode


# Define an instance method `GuessingGame#guess` which takes an integer called `guess` as its input. `guess` should return the symbol `:high` if the `guess` is larger than the `answer`, `:correct` if the `guess` is equal to the `answer`, and `:low` if the `guess` is lower than the `answer`.

# Define an instance method `GuessingGame#solved?` which returns `true` if the most recent `guess` was correct and `false` otherwise.

# Input:
# Answer

# Output:
# whether guess was correct, high or low

# Steps:
# Define instance variable @answer as labels
# End method

# Define instance method guess
# Define instance variable @guess
# Create if statement - if @guess is greater than answer, return :high
# Add elsif statement - if @guess is equal to the answer, return :correct
# Add else statement - if @guess is less than answer, return :low

# Define instance method solved?
# If most recent guess is true, return 'true' #
# If most recent guess is not true, return 'false' #

# 3. Initial Solution

# class GuessingGame
#   def initialize(answer)
#   	@answer = answer
#   end

#   def guess(guess)
#   	@guess = guess
#   	if @guess > @answer
#   		return :high
#   	elsif @guess == @answer
#   		return :correct
#   	else @guess < @answer
#   		return :low
#   	end
#   end

#   def solved?
#   	@solved = @guess
#   	if @guess == @answer
#   		true
#   	else 
#   		false
#   	end
#   end
# end

# game = GuessingGame.new(10)
# p game.guess(5)  # => :low
# p game.guess(20) # => :high


# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
  	@answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if @guess > @answer
  		:high
  	elsif @guess == @answer
  		:correct
  	else
  		:low
  	end
  end

  def solved?
  	@solved = @guess
  	@guess == @answer
  end
end





# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(10)

# "returns :high when the guess is too high"
p game.guess(100) == :high

# "returns :low when the guess is too low" do
p game.guess(0) == :low

# "returns :correct when the guess is correct" do
p game.guess(10) == :correct






# 5. Reflection 
# Like most other challenges, using pseudocode to plan was a useful strategy for this 
# challenge.  And, because I had practice with writing classes through the previous two #challenges, 
# I was able to write pseudocode and translate to code with ease.  

# I did struggle briefly, however, with placement of @guess.  Specifically, I initially 
# included it in the initialize method and as an argument.  However, after looking again at the 
# driver code and then testing it, I realized that this would cause and caused an argument 
# error -- there were not enough arguments passed in spec document for the initialize method to 
# take two arguments.  

# # Also, in my previous research on class, I had not come across examples of if..else methods 
# in class.  Before including it in this challenge’s code, I look for such examples.  As I have 
# alluded in other reflections, I look forward to being able to look at a language and know 
# most of its capabilities--I’m convinced that, while research may help, this will be more 
# natural after much practice.

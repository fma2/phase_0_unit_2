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

class GuessingGame
  def initialize(answer)
  	@answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if @guess > @answer
  		return :high
  	elsif @guess == @answer
  		return :correct
  	else @guess < @answer
  		return :low
  	end
  end

  def solved?
  	@solved = @guess
  	if @guess == @answer
  		true
  	else 
  		false
  	end
  end
end

game = GuessingGame.new(10)
p game.guess(5)  # => :low
p game.guess(20) # => :high


# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
  	@answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if @guess > @answer
  		return :high
  	elsif @guess == @answer
  		return :correct
  	else
  		return :low
  	end
  end

  def solved?
  	@solved = @guess
  	if @guess == @answer
  		true
  	else 
  		false
  	end
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

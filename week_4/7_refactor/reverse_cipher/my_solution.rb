# U2.W4: Refactor Cipher Solution


# I worked on this challenge with: Daniel Deepak.


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence) # Defining method as translate_to_cipher, takes argument sentence
    alphabet = ('a'..'z').to_a # Sets variable alphabet, turns range into array 
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] # Creates a hash in which it takes the alphabet elements as keys and sets up values as 4 letters from the key
    spaces = ["@", "#", "$", "%", "^", "&", "*"] # Sets an array "spaces" 
    
    original_sentence = sentence.downcase # Sets variable original_sentece to be argument but in lower case
    encoded_sentence = [] # Creates empty array encoded_sentence
    original_sentence.each_char do |element| # Begins a loops through each element of the original_sentence array 
      if cipher.include?(element) # Checks to see if each element is present
        encoded_sentence << cipher[element] # If present, pushes the key from the cipher hash 
      elsif element == ' ' # Checks to see if element is ''
        encoded_sentence << spaces.sample #If present, selects one of the elements from spaces and pushses to encoded_sentence
      else 
        encoded_sentence << element #Otherwise, it pushes the element into the encoded_sentence
      end
     end
    
    return encoded_sentence.join #takes encoded sentence and joins it together
end


# Questions:
# 1. What is the .to_a method doing? #Turns range into an array
# 2. How does the rotate method work? What does it work on? #Depending on the argument it moves forward a certain number of indices in the array; uses the argument number as the index
# 3. What is `each_char` doing? #Method to pass each character in a string to the given block of code
# 4. What does `sample` do? #Randomly selects an element from an array
# 5. Are there any other methods you want to understand better? #zip and its uses in other situations
# 6. Does this code look better or worse than your refactored solution 
#    of the original cipher code? What's better? What's worse? 
    #Better 
# 7. Is this good code? What makes it good? What makes it bad?
    #Good code once you understand the methods  

# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 


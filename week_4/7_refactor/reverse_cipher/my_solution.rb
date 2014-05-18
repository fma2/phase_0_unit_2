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
# Does this return the same thing every time? #No it does not, because of the #sample method
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 
# #Like Challenge 6, it was enlightening to go through the provided code line by line.  Specifically, as a new programmer, I like to see (1) what Ruby is capable of and (2) how good code is written.  And, as a teacher, I really believe in the value of modeling.  Being able to see examples of simple Ruby programs serves, in part, as a model--I hope when Phase 1 begins I will see modeling (of good code, of how to think about code/metacognition, etc.) in the DBC classroom, as well.  

# With this challenge’s code, the new methods I learned were #sample, Hash, #zip, and #each_char.  With #zip, I understand how it is used in the provided code but am not able to think of a real-life example of when I could use it in the future.  

# Whether or not the code follows good practices is a concept I am still learning.  However, my pair and I felt this code was well-written.  One reflection on refactored code as a new programmer is on its readability.  It seems refactored code is harder to read to see what is actually happening.  When its parsed out (either via conversation or when I’ve typed some of it out to make sense of what is happening), its clearer.  While an experienced programmer should be refactoring and a new programmer should get in the habit of it, I’m convinced I should focus on it to make it consistent in my code-writing process, rather than making myself upset if I’m not able to do it quickly and well on my own.  I would rather become effective with writing the initial code and with knowing what is happening with the code.  

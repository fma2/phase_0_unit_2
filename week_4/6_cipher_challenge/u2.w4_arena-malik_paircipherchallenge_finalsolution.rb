# U2.W4: Cipher Challenge


# I, RJ Arena, worked on this challenge with Farheen Malik.



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
#
# Both input and decoded_sentence are arrays.  Input takes the original coded_message string and breaks it into indivicual alphameric elements in the array.
# decoded_sentence is likewise an array, null at first, into which the decode characters are placed as individual elements.
# cipher is a hash with a one-to-one representation of the coded character to its decoded character.  The hash is relateively inefficient from both a memory
# utilization standpoint and a search standpoint, especially since there is a functional relationship between the coded and decoded characters.
#
# Test codes run:
# Used irb to investigate coded message string breakdown
# Useed irb to asses results of (0..9).to_a and possible use of ("ä".."z").to_alpha for future refactor

def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c", 
            "h" => "d",   # f as index, b as value
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}

  input.each do |x| # What is #each doing here? # Looking at each element in coded_message
    found_match = false  # Why would this be assigned to false from the outset => initializing a flag to start processing.  When solution found, flag set to true.
    cipher.each_key do |y| # What is #each_key doing here? #It looks at each key in the hash cipher
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? #First loop counter, 2nd loop counter
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here? #Reason for this if you find a match you can exit the loop and start to decode the next character
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? #Adding a space!
        decoded_sentence << " "
        found_match = true 
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? #Displays the range  => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] 
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # What is this looking for? #Looking where found_math=false is not true. Nothing above works, just return that character
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help.  #\d+ looks for numeric entries.  Matching any numbers in the decoded sentence
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate.  Divide the commie's number by 100
  end  
  return decoded_sentence # What is this returning? +> this returns the final decoded message       
end


# Your Refactored Solution
def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  decoded_sentence = []
  # key refactor poit. Eliminate hash and simply use an array, alpha, of elements consisting of the alphabet (good thing its not Kanji!)
  alpha = ('a'..'z').to_a
  input.each do |x| # What is #each doing here? # Looking at each element in coded_message
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? #You're doing this for all 
    alpha.each do |y| # What is #each_key doing here? #It looks at each key in the hash cipher
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? #First loop counter, 2nd loop counter
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
          alpha.each do |z|  # since the decoded charcter is 4  positions away, we know that it is a linear function of the coded character
            z = alpha.index(y)
            if z > 3   # alphabetic characters wrap around, so for the index to work, it must be greater than 3, since the first element in the array is at index 0
              decoded_sentence << alpha[z-4]
              found_match = true
              break
            else
              decoded_sentence << alpha[22+z]  # for letters w,x,y,z 
              found_match = true
              break
            end
          end
        found_match = true
        break  # Why is it breaking here? #Reason for this if you find a match you exit the loop above and start decoding the next character
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? #Adding a space!
        decoded_sentence << " "
        found_match = true 
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? #Displays the range  => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] 
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # What is this looking for? #Looking where found_math=false is not true. Nothing above works, just return that character
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help.  #Matching any numbers in the decoded sentence
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...divide his number by 100
  end  
  return decoded_sentence # What is this returning?  +> the final decoded sentence
end



# Driver Code:
# p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
# p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
# p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
# p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
# p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection
 # Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
# Additional driver code statements
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") ==  "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"



# Reflection
 
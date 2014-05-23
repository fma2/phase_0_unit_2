# U2.W4: Cipher Challenge


# I worked on this challenge with: RJ Arena.



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.

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
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? #You're doing this for all 
    cipher.each_key do |y| # What is #each_key doing here? #It looks at each key in the hash cipher
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? #First loop counter, 2nd loop counter
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here? #Reason for this if you find a match you can redo the loop above and not continue
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
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return decoded_sentence # What is this returning?        
end


# Your Refactored Solution
def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  decoded_sentence = []
  alpha = ('a'..'z').to_a
  input.each do |x| # What is #each doing here? # Looking at each element in coded_message
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? #You're doing this for all 
    alpha.each do |y| # What is #each_key doing here? #It looks at each key in the hash cipher
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? #First loop counter, 2nd loop counter
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
          alpha.each do |z|
            z = alpha.index(y)
            if z > 3
              decoded_sentence << alpha[z-4]
              found_match = true
              break
            else
              decoded_sentence << alpha[22+z]
              found_match = true
              break
            end
          end
        found_match = true
        break  # Why is it breaking here? #Reason for this if you find a match you can redo the loop above and not continue
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
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return decoded_sentence # What is this returning?        
end



# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") ==  "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"
# # Reflection

# With my pair, it was enlightening to go through the provided code line by line.  It helped to articulate what I thought I saw happening and to hear another Boot explain how they interpreted it.  I had seen or used most of the methods in the code save for #sample, Hash, #zip, and #each_char.  Of the new methods, my pair and I spent time discussing #zip--I understood how it was used in the provided code but was not able to think of a real-life example of when I would use it in the future.  

# We spent half of our pairing session describing what the code was doing and the other half refactoring.  Unlike other pairing sessions I have participated in, we discussed how we would refactor the cipher hash before taking on driver and navigator roles.  I liked this process, as it ensured both of us were on the same page once we started working on the code; it opened a channel of clear communication.  

# I can see there are a few other aspects of the code that could be refactored.  I look forward to when I am able to do this more efficiently, when I am familiar with many more (if not all) Ruby methods, can easily spot aspects of a piece of code that need refactoring, and can immediately make changes.  
 
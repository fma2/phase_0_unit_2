# U2.W4: Research Methods

my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}
i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]

# Person 1's solution

# PSEUDOCODE
# Create a method my_array_finding_method that takes an Array and a letter as arguments and returns the words that contain that letter.
# Add parameters for method "array" and "letter"
# Use method #delete_if to delete elements in array that are not a string
# Use method #delete_if to delete elements in array that do not have the letter, use #match method

def my_array_finding_method(array, letter)
	array2 = array.clone
	array2.delete_if {|word| word.class != String}
  	array2.delete_if {|word| word.match(letter) == nil }
  	return array2
 end

# PSEUDOCODE
# Create a method my_hash_finding_method that takes a Hash and number as arguments and returns a list of pet names by age. 
# Add parameters to method "hash" and "number"
# Sort numbers in order
# Lists pets in order by age

def my_hash_finding_method(hash, number)
	hash2 = hash.clone
	hash2.delete_if {|key, value| value != number }
	hash2.keys
end

# Identify and describe the ruby method you implemented. 
# For my_array_finding_method, I utilized the method delete_if, which deletes every element of the array for which block evaluates to true.  I ran the method twice -- once to delete the numbers in the array and another time to delete the words that did have the letter.
#
# For my_hash_finding_method, I utilized the method delete_if which deletes every key-value pair from the hash for which block evaluates to true.
# I then extracted the keys from the hash.
#

# # Person 2
# def my_array_modification_method(source, thing_to_modify)
#   # Your code here!
# end

# def my_hash_modification_method(source, thing_to_modify)
#   # Your code here!
# end

# # Identify and describe the ruby method you implemented. 
# # 
# #
# #


# # Person 3
# def my_array_sorting_method(source)
#   # Your code here!
# end

# def my_hash_sorting_method(source)
#   # Your code here!
# end

# # Identify and describe the ruby method you implemented. 
# # 
# #
# #


# # Person 4
# def my_array_deletion_method(source, thing_to_delete)
#   #Your code here!
# end

# def my_hash_deletion_method(source, thing_to_delete)
#   #Your code here!
# end

# # Identify and describe the ruby method you implemented. 
# # 
# #
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# # # Reflect!
# # In this challenge, I served as Person 1.  First, I enjoyed learning how to read Ruby Documentation. I admittedly did not know how to use it before this challenge demanded it; I wish it had been required in previous weeks.  I spent so much time Googling questions I had, as I did not realize there was a single website with most, if not all, the information I need about Ruby.  

# My task as Person 1 was to write code to find matching data.  While I was able to find Ruby methods that locate a character in a string and return the character, I did not find a method that locates a character in a string and return the whole string.  Instead, I used the delete_if method.  When I realized that it would delete elements in the original array and hash, I added a method to clone the array and hash.  This saved the results of the methods into a new variable, ensuring that my methods do not affect my group’s ability to work with the array and hash.  

# Overall, this challenge led me to thoroughly consider methods available for arrays, strings, and hashes.  I learned quite a bit about Ruby’s capabilities through this exercise.  

# Further, though the challenge did not ask for pseudocode, I find it interesting that I still needed to write it -- it’s becoming more natural, and I find I need it to do it before wasting time typing out code that does not work.  
# 
# 
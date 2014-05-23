# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Stephen Estrada
# 2) Farheen Malik

 # This is the file you should end up editing. 
 
# def bakery_num(num_of_people, fav_food)
#   my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
#   pie_qty = 0
#   cake_qty = 0
#   cookie_qty = 0
  
#   has_fave = false

#   my_list.each_key do |k|
#   if k == fav_food
#   has_fave = true
#   fav_food = k
#   end
#   end
#   if has_fave == false
#   raise ArgumentError.new("You can't make that food")
#   else
#   fav_food_qty = my_list.values_at(fav_food)[0]
#   if num_of_people % fav_food_qty == 0
#     num_of_food = num_of_people / fav_food_qty
#     return "You need to make #{num_of_food} #{fav_food}(s)."
#   else num_of_people % fav_food_qty != 0
#     while num_of_people > 0
#     if num_of_people / my_list["pie"] > 0
#     pie_qty = num_of_people / my_list["pie"]
#     num_of_people = num_of_people % my_list["pie"]
#     elsif num_of_people / my_list["cake"] > 0
#     cake_qty = num_of_people / my_list["cake"]
#     num_of_people = num_of_people % my_list["cake"]
#     else
#     cookie_qty = num_of_people
#     num_of_people = 0
#     end
#     end
#     return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
#     end
#   end
# end

# WITH COMMENTS
def bakery_num(num_of_people, fav_food) #Method bakery_num passes two parameters - num_of_people and fav_food
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} #Define hash my_list with three keys and three values
  pie_qty = 0 #Each key has own qty set to zero
  cake_qty = 0
  cookie_qty = 0
  
  has_fave = false #Allows for only 3 selections of food

  my_list.each_key do |k| #Loop through keys in my_list
    if k == fav_food #If k is one of the favorite foods, has_fave returns true
      has_fave = true
      fav_food = k #Sets fav_food as k
    end
  end
  if has_fave == false #If fav_food is not in hash, raises ArgumentError
    raise ArgumentError.new("You can't make that food")
  else
    fav_food_qty = my_list.values_at(fav_food)[0] #Returns position 0 of array of values of fav_food
  if num_of_people % fav_food_qty == 0 #If num_of_people divided by fav_food_qty has no remainder, num_of_food is set to num_of_people divided by fav_food_qty
    num_of_food = num_of_people / fav_food_qty
    return "You need to make #{num_of_food} #{fav_food}(s)." #Returns statement about number for that fav_food
  else num_of_people % fav_food_qty != 0 #Else num_of_people divided by fav_food_qty does not give a remainder of 0,
    while num_of_people > 0 #While num_of_people is greater than 0
      if num_of_people / my_list["pie"] > 0 #If num_of_people divided by value of "pie" is greater than 0
        pie_qty = num_of_people / my_list["pie"] #Sets pie_qty as num_of_people divided by value of "pie"
        num_of_people = num_of_people % my_list["pie"] #Sets num_of_people as the remainder of num_of_people divided by value of "pie"
      elsif num_of_people / my_list["cake"] > 0 #If num_of_people divided by value of "cake" is greater than 0
        cake_qty = num_of_people / my_list["cake"] #Sets cake_qty as num_of_people divided by value of "cake"
        num_of_people = num_of_people % my_list["cake"] #Sets num_of_people as the remainder of num_of_people divided by value of "cake"
      else
       cookie_qty = num_of_people #Sets cookie_qty as the num_of_people
       num_of_people = 0 #Sets num_of_people as 0 so it doesn't reloop
    end
    end
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)." #Returns statement about quantities
    end
  end
end

#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 
 
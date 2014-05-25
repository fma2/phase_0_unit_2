# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: 






# Our Refactored Solution

# def bakery_num(num_of_people, fav_food)
#   ppl_per_food = {"pie" => 8, "cake" => 6, "cookie" => 1}
#   qty = {"pie" => 0, "cake" => 0, "cookie" => 0}
 
#  raise ArgumentError.new("You can't make that food") if not ppl_per_food.include?(fav_food)

#   ppl_per_food.each_key do |k|
#     if k == fav_food
#       has_fave = true
#       fav_food = k
#     end
#   end
#   fav_food_qty = ppl_per_food.values_at(fav_food)[0]
#   if num_of_people % fav_food_qty == 0
#     num_of_food = num_of_people / fav_food_qty
#     "You need to make #{num_of_food} #{fav_food}(s)."
#   else num_of_people % fav_food_qty != 0
#     while num_of_people > 0
#       if num_of_people / ppl_per_food["pie"] > 0
#         qty["pie"] = num_of_people / ppl_per_food["pie"]
#         num_of_people = num_of_people % ppl_per_food["pie"]
#       elsif num_of_people / ppl_per_food["cake"] > 0
#         qty["cake"] = num_of_people / ppl_per_food["cake"]
#         num_of_people = num_of_people % ppl_per_food["cake"]
#       else
#         qty["cookie"] = num_of_people
#         num_of_people = 0
#       end
#     end
#     "You need to make #{qty["pie"]} pie(s), #{qty["cake"]} cake(s), and #{qty["cookie"]} cookie(s)."
#   end
# end


def bakery_num(num_of_people, fav_food)
 my_list = {'pie' => 8, 'cake' => 6, 'cookie' => 1}

 has_fav = my_list.include?(fav_food)
 if !has_fav
   raise ArugmentError.new("You can't make that food.")
 end

 fav_food_qty = my_list[fav_food]
 if num_of_people % fav_food_qty == 0
   num_of_food = num_of_people / fav_food_qty
   "You need to make #{num_of_food} #{fav_food}(s)."
 end
 pie_qty = num_of_people / my_list["pie"]
 cake_qty = (num_of_people % my_list["pie"]) / my_list["cake"]
 cookie_qty = (num_of_people % my_list["pie"] % my_list["cake"]) / my_list["cookie"]
 "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
end






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




#  Reflection 




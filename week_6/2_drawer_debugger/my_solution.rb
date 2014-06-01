# U2.W6: Drawer Debugger


# I worked on this challenge by myself.


# 2. Original Code

class Drawer

	attr_reader :contents

# Are there any more methods needed in this class?

	def initialize
		@contents = []
		@open = true
	end

	def open
		@open = true
	end

	def close
		@open = false
	end 

	def add_item(item)
		@contents << item
	end

	def remove_item(item = @contents.pop) #what is `#pop` doing? ##Removes the last element from array
		@contents.delete(item)
	end

	def dump  # what should this method return? ##Before I modified, this only returned string "Your drawer is empty."
		@contents.clear #After I modified-this method actually clears the array (i.e makes the drawer empty)
		puts "Your drawer is empty."
	end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end
end

class Silverware
	attr_reader :type

# Are there any more methods needed in this class? ##Yes, see below.

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end

	def clean_silverware #I added this method
		puts "cleaning the #{type}"
		@clean = true
	end

	def soak_silverware
		puts "soaking the #{type}"
		@dry = false
	end

	def dry_silverware
		puts "drying the #{type}"
		@dry = true
	end

end

#Initiate instance of class Silverware, knife1
knife1 = Silverware.new("knife")

#Initiate instance of class Drawer, silverware_drawer
silverware_drawer = Drawer.new

#Use add_item method to add knife1, spoon, and fork to drawer, view contents of drawer
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

#Use remove_item method to remove last item in array (uses #pop method), view contents of drawer
silverware_drawer.remove_item
silverware_drawer.view_contents

#Initiate instance of class Silverware, sharp_knife, add sharp_knife to drawer, view contents of drawer
sharp_knife = Silverware.new("sharp_knife")
silverware_drawer.add_item(sharp_knife)
silverware_drawer.view_contents

#Create variable removed_knife, sharp_knife removed from drawer with remove_item method, eat with sharp_knife, clean sharp knife with clean_silverware method
removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

#View contents of drawer, empty drawer, view contents again
silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? ##The same list of contents as line 89

#Initiative instance of class Silverware, fork, add fork to drawer, view drawer contents
fork = Silverware.new("fork")
silverware_drawer.add_item(fork)
silverware_drawer.view_contents

#Remove fork from drawer, eat with fork, clean fork
silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
fork.eat
fork.clean_silverware
fork.soak_silverware
fork.dry_silverware

silverware_drawer.add_item(fork)

spoon = Silverware.new("spoon")
silverware_drawer.add_item(spoon)
silverware_drawer.view_contents

silverware_drawer.remove_item(fork)
silverware_drawer.view_contents

#BONUS SECTION
puts fork.clean_silverware
fork.clean_silverware == "cleaning the fork"

# DRIVER TESTS GO BELOW THIS LINE
spoon2 = Silverware.new("spoon_2")
test_drawer = Drawer.new
test_drawer.add_item(spoon2)
test_drawer.view_contents
test_drawer != nil

puts spoon2.clean_silverware 
spoon2.clean_silverware == "cleaning the spoon_2"
puts spoon2.eat
spoon2.eat == "eating with the spoon_2"





# 5. Reflection 

# I appreciated this challenge, as it gave me practice reading code and driver code and then debugging
# , all for the same program--in previous challenges, I recall focusing mostly on one of the two.  
# Further, the code is a good example of the object-oriented programming I have been reading about in 
# POODR.  Each method as only one function, and I enjoyed reading the code because of this simplicity-
# -it made it easier to figure out what was going on, a task I found harder with functional 
# programming code.  

# From this challenge, I learned how two classes can interact with one another.  Having to refer to 
# error messages to correct syntax supported this learning--because I was not used to seeing two 
# classes, I was even more attentive to the information provided in the error messages.  

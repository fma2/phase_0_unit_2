# U2.W4: Create Accountability Groups


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: Array of 24 Names
# Output: Create 6 groups of 4 people randomly for each unit of three units
# Steps: 

# Define array with names of all students in NY Newts
# Create variable dbc_group1
# Store 4 names from a shuffled dbc_newts 
# Delete 4 names in dbc_group1 from dbc_newts
# Repeat above steps for dbc_group2, dbc_group3, and so on
# Print all groups

#grab 4, remove 4, print immediately


# 3. Initial Solution

dbc_newts = "Rootul Patel","Hilary Barr", "Alan Florendo", "Cassie Moy", "Stephen Craig Estrada", "Austin Hay", "Anthony Edwards Jr.", "John Berry", "Farheen Malik","Daniel Deepak", "RJ Arena", "Justin Lee", "Michael Weiss", "David Sin", "Julius Jung", "Fahia Mohamed", "Molly Huerster", "Eric Hou", "Avi Fox-Rosen", "Joel Yawili", "Dylan Richards", "Kaitlyn La", "Derek Siker", "Dylan Krause"

dbc_group1 = dbc_newts.shuffle.slice(0,4)
		dbc_newts.delete_if {|name| name.include?(dbc_group1[0])}
		dbc_newts.delete_if {|name| name.include?(dbc_group1[1])}
		dbc_newts.delete_if {|name| name.include?(dbc_group1[2])}
		dbc_newts.delete_if {|name| name.include?(dbc_group1[3])}


dbc_group2 = dbc_newts.shuffle.slice(0,4)
		dbc_newts.delete_if {|name| name.include?(dbc_group2[0])}
		dbc_newts.delete_if {|name| name.include?(dbc_group2[1])}
		dbc_newts.delete_if {|name| name.include?(dbc_group2[2])}
		dbc_newts.delete_if {|name| name.include?(dbc_group2[3])}

dbc_group3 = dbc_newts.shuffle.slice(0,4)
		dbc_newts.delete_if {|name| name.include?(dbc_group3[0])}
		dbc_newts.delete_if {|name| name.include?(dbc_group3[1])}
		dbc_newts.delete_if {|name| name.include?(dbc_group3[2])}
		dbc_newts.delete_if {|name| name.include?(dbc_group3[3])}

dbc_group4 = dbc_newts.shuffle.slice(0,4)
		dbc_newts.delete_if {|name| name.include?(dbc_group4[0])}
		dbc_newts.delete_if {|name| name.include?(dbc_group4[1])}
		dbc_newts.delete_if {|name| name.include?(dbc_group4[2])}
		dbc_newts.delete_if {|name| name.include?(dbc_group4[3])}

dbc_group5 = dbc_newts.shuffle.slice(0,4)
		dbc_newts.delete_if {|name| name.include?(dbc_group5[0])}
		dbc_newts.delete_if {|name| name.include?(dbc_group5[1])}
		dbc_newts.delete_if {|name| name.include?(dbc_group5[2])}
		dbc_newts.delete_if {|name| name.include?(dbc_group5[3])}

dbc_group6 = dbc_newts.shuffle.slice(0,4)
		dbc_newts.delete_if {|name| name.include?(dbc_group6[0])}
		dbc_newts.delete_if {|name| name.include?(dbc_group6[1])}
		dbc_newts.delete_if {|name| name.include?(dbc_group6[2])}
		dbc_newts.delete_if {|name| name.include?(dbc_group6[3])}
	
print dbc_group1
print "--"
print dbc_group2
print "--"
print dbc_group3
print "--"
print dbc_group4
print "--"
print dbc_group5
print "--"
print dbc_group6
print "--"

#With the above initial solution, you would have to run it 3 times to print groups for 3 units


# 4. Refactored Solution

dbc_newts = "Rootul Patel","Hilary Barr", "Alan Florendo", "Cassie Moy", "Stephen Craig Estrada", "Austin Hay", "Anthony Edwards Jr.", "John Berry", "Farheen Malik","Daniel Deepak", "RJ Arena", "Justin Lee", "Michael Weiss", "David Sin", "Julius Jung", "Fahia Mohamed", "Molly Huerster", "Eric Hou", "Avi Fox-Rosen", "Joel Yawili", "Dylan Richards", "Kaitlyn La", "Derek Siker", "Dylan Krause"

def create_accountability_groups(members)
	all_dbc_groups = []
	new_unit = members.clone
	6.times do
		new_dbc_group = new_unit.shuffle.slice(0,4)
		for group_member in new_dbc_group
			new_unit.delete_if {|dbcname| dbcname.include?(group_member)}
		end
		all_dbc_groups << new_dbc_group
	end
	return all_dbc_groups
end

print create_accountability_groups(dbc_newts) # unit 1
print create_accountability_groups(dbc_newts) # unit 2
print create_accountability_groups(dbc_newts) # unit 3

# 1. DRIVER TESTS GO BELOW THIS LINE

# #create function to test, then call it to see if it works
# test for 4 people per group
# test if output has the total
# test for repeated?

dbc_test = dbc_newts.shuffle.slice(0,4)
puts create_accountability_groups(dbc_newts) == dbc_test #This returns random groups thus will often return false

def test_group_size(test_members)
 	 groups = create_accountability_groups(test_members)
 	 groups.each { |group| group.count == 4}
end

p test_group_size(dbc_newts) == true

def test_whole_group(test_members)
	whole_group = create_accountability_groups(test_members)
	whole_group = 24
end

p test_whole_group(dbc_newts) == true

# 5. Reflection 
## I completed this challenge after Challenge 3, so I knew how to look up methods on Ruby Documentation when I needed help.  In writing the Initial Code, I chose not to use loops in an effort to practice refactoring.  In due course, my initial solution repeats quite a bit of the same code.  It was great to be able to get this visual; a loop could be as little as one line of code but is powerful enough to execute quite a bit at once. 

# I think I met the learning competencies in changing my initial code to refactored code.  I took an un-automated repetitive task and made it automated.  Further, my initial code only made groups for one unit, not three, and, in automating it for the refactored code, I was able to make groups for 3 groups.  In doing this, I realized that I couldn’t just loop what I had in my initial code, as it includes deletion of names.  I had to make clones of the members to be used in each loop as well as a new variable to hold these groups.
# 
# Finally, I need to research more lessons or videos on how to write driver code.  For this challenge, I viewed the other challenges’ driver code files for help; it would help to know and have practice with a process or best practices in creating driver code. 



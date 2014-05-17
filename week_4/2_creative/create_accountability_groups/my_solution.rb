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







# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 



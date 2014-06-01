# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself, with: ].


# Pseudocode
# Define class Song
	# Define method initalize, takes 2 arguments: song_artist, artist
	# Define instance @song_title and @artist
	# End method

	# Define method create_song
	# Return string
	# End method

	# Define method play
	# Return string
	# End method

# End class

# Define class Playlist, takes 3 arguments (???)
	# Define method initialize, takes arguments *songs
	# Define instance variable @songs = *songs
	# Define @mixtape = []
	# Iterate over songs to add each to @mixtape
	# End method

	# Define method add, takes arguments *songs
	# Iterate over songs to add each to @mixtape
	# End method

	# Define method num_of_tracks
	# Use method .length with @mixtape
	# End method

	# Define method remove, take argument song
	# Use method .delete with song
	# End method

	# Define method includes, take argument song

	# Define method play_all
	# Return @mixtape
	# End method

	# Define method display
	# Iterate over @mixtape to return each song
	# End method

# Initial Solution
# class Song
# 	attr_reader :song_title, :artist

# 	def initialize(song_title,artist)
# 		@song_title = song_title
# 		@artist = artist
# 	end

# 	def create_song
# 		return "#{song_title} by #{artist}"
# 	end

# 	def play
# 		return "#{song_title} by #{artist} is playing."
# 	end

# end

# class Playlist
# 	attr_reader :songs

# 	def initialize(*songs)
# 		@songs = *songs
# 		@mixtape = []
# 		songs.each { |song| @mixtape << song }
# 	end

# 	def add(*songs)
# 		songs.each { |song| @mixtape << song }
# 	end

# 	def num_of_tracks
# 		@mixtape.length
# 	end

# 	def remove(song)
# 		@mixtape.delete(song)
# 	end

# 	def includes?(song)
# 		@mixtape.include?(song)
# 	end

# 	def play_all
# 		@mixtape
# 	end

# 	def display
# 		@mixtape.each {|song| "- " + song.to_s }
# 	end

# end

# Refactored Solution
class Song
	attr_reader :song_title, :artist

	def initialize(song_title,artist)
		song_title = song_title
		artist = artist
	end

	def play
		return "#{song_title} by #{artist} is playing."
	end

end

class Playlist
	attr_reader :songs, :mixtape

	def initialize(*songs)
		songs = *songs
		@mixtape = []
		songs.each { |song| mixtape << song }
	end

	def add(*songs)
		songs.each { |song| mixtape << song }
	end

	def num_of_tracks
		mixtape.length
	end

	def remove(song)
		mixtape.delete(song)
	end

	def includes?(song)
		mixtape.include?(song)
	end

	def play_all
		mixtape
	end

	def display
		mixtape.each {|song| "- " + song.to_s }
	end

end


# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection 

# I enjoyed using driver code to write code in this challenge.  It did take me a few extra minutes to
# realize that the instances created for the class Song did not call two different songs; rather, 
# they called a song and its artist.  It helped that, in addition to expectations established in 
# earlier Week 6 challenges, I was reading about single function methods in POODR when I began this 
# challenge.  Unlike many other times, I was confident while writing the pseudocode and code for this 
# challenge that I was on the right track (pun, intended).

# One unexpected learning from this challenge was how instances of a class look when printed--there 
# is an ID and brackets that make it strange when printed into a string.  Seeing this I realized how 
# valuable attr_reader can be; I used attr_reader to call the information stored in a variable in a 
# class.  Regardless of this exposure and practice, I know I still need to learn more about class IDs 
# and attr_reader.

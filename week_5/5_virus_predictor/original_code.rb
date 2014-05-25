# U2.W5: Virus Predictor

# I worked on this challenge with Justin Lee.

# EXPLANATION OF require_relative
#
#
# EXPLANATION OF require_relative
# This requires the pathname that is going to be run. This pathname is located in this directory.
#
# require_relative 'state_data'
=begin
class VirusPredictor
  # This is initializing state of origin, population density, population, region, regional spread and defining instance variables for each.
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end
  
  # This method, virus_effects, calls the methods predicted deaths and speed of spread.
  def virus_effects  #HINT: What is the SCOPE of instance variables? #Works within this particular class
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private  #what is this?  what happens if it were cut and pasted above the Virus_effects method 
  # Code under private stays private and is not included in the Class unless a method calls it.  
  # If its moved above virus_effects, there is an error: rb:73:in `block in <top (required)>': private method `virus_effects' called for #<VirusPredictor:0x000001013416e0> (NoMethodError)

  # This method, predicted_deaths, takes arguments population_density, population, and state.  
  # If @population density is greater than or equal to 200, then number_of_deaths is the @population times 0.4 rounded to the nearest integer.
  def predicted_deaths(population_density, population, state)
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # This method, speed_of_spread, takes arguments population_density and state.
  # Sets variable speed to 0.0.
  # If @population_density is greater than or equal to 200, add 0.5 to speed
  def speed_of_spread(population_density, state) #in months
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end
=end

#=======================================================================

# Refactored Solution

require_relative 'state_data'

class VirusPredictor
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end
  
  def virus_effects  
    predicted_deaths_and_speed_of_spread(@population_density, @population, @state)
  end

  private  
  
  def predicted_deaths_and_speed_of_spread(population_density, population, state)
    speed = 0.0
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
      speed += 0.5
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
      speed += 1
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
      speed += 1.5
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
      speed += 2
    else 
      number_of_deaths = (@population * 0.05).floor
      speed += 2.5
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"

  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, data| 
  state = VirusPredictor.new(state, data[:population_density], data[:population], data[:region], data[:regional_spread])
  state.virus_effects
end

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects

#REFLECTION
# I worked on this challenge in a pair.   My pair and I were able to read the code and explain what it was doing with 
# ease.  We found it challenging when it came time to initialize VirusPredictor for each state.  We discussed looping 
# as an option and began our work with pseudocode.  However, when it came to translating the work into code, we tested
# , modified, retested, and kept encountering numerous syntax errors.  

# I think we began with a satisfactory plan: to model the information we need for all states after the syntax in each 
# of the available driver code lines and to consider ways to loop.  However, it took us quite a bit of time to put 
# plans together sans syntax error.  Conclusively, it seems that I need to practice more with creating an instance of 
# a class--to see examples of where it can be written in a program, what it might look like if in a loop or another 
# similar location, etc.  This is because I did not initially consider that we could initiate an instance of the class
# then call that instance within a loop.

# Overall, this challenge was a great example of a real-world use of ruby.  It is the kind of program I would like to 
# create for my current full-time job, which often requires I sift through data on education and schools and crunch 
# numbers and make hypotheses.
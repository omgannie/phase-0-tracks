# Virus Predictor

# I worked on this challenge [by myself, with: Darren Lee and Davina].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative imports data from another file within the same directory
#
require_relative 'state_data'

class VirusPredictor

  # state, population, population_density initializes upon new instance of class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # utilizing two private methods to call on instance variables
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # takes population_density, population, state as parameters
  # shows number of predicted deaths based on population_density
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      num = 0.4
    elsif @population_density >= 150
      num = 0.3
    elsif @population_density >= 100
      num = 0.2
    elsif @population_density >= 50
      num = 0.1
    else
      num = 0.05
    end

    number_of_deaths = (@population * num).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # takes population_density and state as parameters
  # calculates how quickly virus will spread based on population_density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

 STATE_DATA.each do |state, info|
   VirusPredictor.new(state, info[:population_density], info[:population])
   state.virus_effects
 end


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section

# The difference between the two hash syntaxes of state_data.rb is that although it was a nested hash,
# going thru the iteration block in the driver code, it shows STATE_DATA having a key, value pair,
# whereas upon accessing the actual state, it did not have a specified key, value pair in the iteration block.
# So, accessing the nested hash had to be specified further by using symbols: info[:population_density] and info[:population]

# require_relative accesses other files that are only within the same directory. require can access outside of the directory, into other directories files.

# in the driver code, we did a .each iteration block because it used a hash, so needing a key, value variable pair to access was very important.
# we could also do .map! iteration to initialize each state, because it also allows key, value variable pairs.

# For refactoring virus_effects, it was apparent that the only things being repeated were the instance variables. and since those are accessible throughout
# the entire class, it was redundant to include them as parameters for both methods.

# The concept I felt that I got a better grasp of was refactoring-- which has been helpful to better understand why it is important, and what exactly to look for.

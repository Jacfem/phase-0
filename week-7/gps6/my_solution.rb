# Virus Predictor

# I worked on this challenge with Dan Shapiro.
# We spent 1.5 hours on this challenge.

# EXPLANATION OF require_relative
#Direct to another Ruby file so that we can reference in our Driver Code
#A relative file is internal to our project

require_relative 'state_data'
class VirusPredictor
#We are initializing & creating instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  private
   # Everything hereafter is a private method
# Predicting deaths based on population density for each state
#Using Floor method to round down
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
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
# Initializing Speed as a counter, and determines the speed of spread based on population size. The higher the population density, the faster the spread.
  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
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

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

def construct(hash)
  hash.each do |key, value|
    state = VirusPredictor.new(key, hash[key][:population_density], hash[key][:population])
    state.virus_effects
  end
end

construct(STATE_DATA)
#=======================================================================
# Reflection Section

=begin

What are the differences between the two different hash syntaxes shown in the state_data file?
The STATE_DATA hash is a nested hash, with the keys as strings of state names. The values of the hash are hashes as well, with symbols as the keys, and numbers as the values.
Since this second hash's keys are symbols, the syntax is standard for a symbol, with a colon after the key name, but in the first hash, we use the hash rocket to assign the values to the keys of state names.

What does require_relative do? How is it different from require?
Require_relative let's us direct to another Ruby file internal to our project so that we can reference in our code.
Require would let us access something that we have installed and want to access in our system, for example, a gem.

What are some ways to iterate through a hash?
We can use each/do on the key, value pairs, and in this case we created new instances of the VirusPredictor Class & we iterated through the key, value pairs, calling a method on each instance.

When refactoring virus_effects, what stood out to you about the variables, if anything?
We realized that we were writing the private methods so that they could be accessed outside of this class. We also realized that we didn't need to require parameters, because they were already instance variables accessible to the method.

What concept did you most solidify in this challenge?
I would say the ability to access & use nested hashes was solidifed in this challenge. At first, we didn't realize we could call the literal key names in order to access the values, but once we did, it was smooth sailing.

=end

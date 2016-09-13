#Coyotes

# Virus Predictor

# I worked on this challenge [by myself, with: Enily].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative is for accessing files with in the directory and are local 
# require is for accessing files that are not local
require_relative 'state_data'

class VirusPredictor


#Initializes a new instance and passing state of origin, population density, and population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  private
# calls predicted deaths and speed of spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end



#Predicting deaths based on population density and rounds it and prints out to user how many expected deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      multiplier = 0.4
    elsif @population_density >= 150
      multiplier = 0.3
    elsif @population_density >= 100
      multiplier = 0.2
    elsif @population_density >= 50
      multiplier = 0.1
    else
      multiplier = 0.05
    end

    number_of_deaths = (@population * multiplier).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Additional way to refactor
# number_of_deaths = (@population * multiplier).floor
# number_from_threshold([200,150,100,50, -Float::INFINITY], [0.5, 1, 1.5, 2, 2.5])

#Predicts speed of spread by population density and prints out statement of how fast it will spread
  def speed_of_spread #in months
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


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects



STATE_DATA.each do |state, population|
    full_report = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
    full_report.virus_effects  
end



#=======================================================================
# Reflection Section
# # What are the differences between the two different hash syntaxes shown in the state_data file?
    #     #One of the hashes uses strings as the keys which makes it easier for use externally and the other one uses symbols which is better
    #     #for internal usage 
    # # What does require_relative do? How is it different from require?
    #     #Require_relative allows you to load a file relative to the current file you are in. 
    #     #Require allows you to load an external file using ruby's built in load path.
    # # What are some ways to iterate through a hash?
    #     #You can iterate through a hash using .each .each_pair .each_key and .each_value
    # # When refactoring virus_effects, what stood out to you about the variables, if anything?
    #     #Anytime you have @variable initialized you can use it throughout the class so you don't need to put it in parameters
    # # What concept did you most solidify in this challenge?
    #     #I am definately better at refactoring now. I like making it more organized and more readable. 





#Bobolinks

    # # Virus Predictor
    # # I worked on this challenge [by myself, with: ].
    # # We spent [#] hours on this challenge.
    # # EXPLANATION OF require_relative
    # # Require_relative allows you to load a file relative to the current file you
    # # are in. Require allows you to load an external file using ruby's built in load path.
    # #
    # require_relative 'state_data'
    # class VirusPredictor
    #   #to initialize a new instance and set instance variables
    #   def initialize(state_of_origin, population_density, population)
    #     @state = state_of_origin
    #     @population = population
    #     @population_density = population_density
    #   end
      
    #   #run the predicted_deaths and speed_of_spread methods
    #   def virus_effects
    #     predicted_deaths #(@population_density, @population, @state)
    #     speed_of_spread #(@population_density, @state)
    #   end
    #   private
    #   # depending on population density calculates the predicted deaths
    #   # rounds the number, print the information
    #   # took out parameters to refactor 
    #   def predicted_deaths #(population_density, population, state)
    #     # predicted deaths is solely based on population density
    #     if @population_density >= 200
    #       float = 0.4
    #     elsif @population_density >= 150
    #       float = 0.3
    #     elsif @population_density >= 100
    #       float = 0.2
    #     elsif @population_density >= 50
    #       float = 0.1
    #     else
    #       float = 0.05
    #     end
    #     number_of_deaths = (@population * float).floor
    #     print "#{@state} will lose #{number_of_deaths} people in this outbreak"
    #   end
    #   #calculates speed of spread based on population density, and prints the information
    #   # took out parameters to refactor
    #   def speed_of_spread #(population_density, state) #in months
    #     # We are still perfecting our formula here. The speed is also affected
    #     # by additional factors we haven't added into this functionality.
    #     speed = 0.0
    #     if @population_density >= 200
    #       speed += 0.5
    #     elsif @population_density >= 150
    #       speed += 1
    #     elsif @population_density >= 100
    #       speed += 1.5
    #     elsif @population_density >= 50
    #       speed += 2
    #     else
    #       speed += 2.5
    #     end
    #     puts " and will spread across the state in #{speed} months.\n\n"
    #   end
    # end
    # #=======================================================================
    # # DRIVER CODE
    #  # initialize VirusPredictor for each state
    # STATE_DATA.each do |state, state_data|
    #   state = VirusPredictor.new(state, state_data[:population_density], state_data[:population])
    #   state.virus_effects
    # end
    # # alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
    # # alabama.virus_effects
    # # jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
    # # jersey.virus_effects
    # # california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
    # # california.virus_effects
    # # alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
    # # alaska.virus_effects
    # #=======================================================================
    # # Reflection Section
    # # What are the differences between the two different hash syntaxes shown in the state_data file?
    #     #One of the hashes uses strings as the keys which makes it easier for use externally and the other one uses symbols which is better
    #     #for internal usage 
    # # What does require_relative do? How is it different from require?
    #     #Require_relative allows you to load a file relative to the current file you are in. 
    #     #Require allows you to load an external file using ruby's built in load path.
    # # What are some ways to iterate through a hash?
    #     #You can iterate through a hash using .each .each_pair .each_key and .each_value
    # # When refactoring virus_effects, what stood out to you about the variables, if anything?
    #     #Anytime you have @variable initialized you can use it throughout the class so you don't need to put it in parameters
    # # What concept did you most solidify in this challenge?
    #     #I am definately better at refactoring now. I like making it more organized and more readable. 

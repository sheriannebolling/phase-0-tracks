#Define Santa class and give it instance methods and some attributes.
class Santa
	attr_reader :ethnicity, :age
	attr_accessor :gender
	def initialize (gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = [
			"Rudolph", 
			"Dasher", 
			"Dancer", 
			"Prancer", 
			"Vixen", 
			"Comet", 
			"Cupid", 
			"Donner", 
			"Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!" 
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!" 
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking.push(reindeer_name)
	end

	#def gender=(new_gender)
		#@gender = new_gender
	#end

	#def age
		#@age
	#end

	#def ethnicity
		#@ethnicity 
	#end
end

#Driver code to test class and methods

#Should make a new Santa instance santa_1 with @gender = "Cisgender" and @ethnicity = "Native Hawaiian"
santa_1 = Santa.new("Cisgender", "Native Hawaiian")

#Should return: Ho, ho, ho! Haaaappy holidays!
santa_1.speak

#Should return: That was a good chocolate chip cookie!
santa_1.eat_milk_and_cookies("chocolate chip cookie")

#Initialization of 50 santas with random ethnicities and random genders
santas = []
santa_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
santa_gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
santa_age = (rand(141)).to_s

50.times do |i|
	santas << Santa.new(santa_gender.sample, santa_ethnicities.sample)
end


#Should push a new Santa in santas array with @gender = "Gender Fluid" and @ethnicity = "Asian"
santas << Santa.new("Gender Fluid", "Asian")

#Should add a year each to birthday
santa_1.celebrate_birthday
santa_1.celebrate_birthday 
p santa_1

#Should put "Rudolph" at the end of array
santa_1.get_mad_at("Rudolph")
p santa_1

#Should put "Vixen" at the end of array
santa_1.get_mad_at("Vixen")
p santa_1

#Driver code for setter method
santa_1.gender = "Female"
p santa_1

#Driver code for getter methods
puts "The first santa is #{santa_1.age} years old and 
identifies as #{santa_1.ethnicity}."



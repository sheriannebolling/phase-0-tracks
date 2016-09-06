
#Coyotes
class Santa 
	attr_reader :age, :ethnicity
	attr_accessor :gender
	def initialize(gender, ethnicity, age)
		puts"Initializing new Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
	end
	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!" 
	end
	
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!" 
	end
	
	def celebrate_birthday
		@age += 1
	end
	
	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete_if {|name| name == "#{reindeer_name}" } 
		@reindeer_ranking << reindeer_name
	end
	
	# def age
	# 	@age
	# end
	
	# def ethnicity
	# 	@ethnicity
	# end
	
	# def gender=(new_gender)
	# 	@gender = new_gender
	# end
	
end

#Driver code
santa_1 = Santa.new("woman", "caucasian", 32)

#test speak and eat_milk_and_cookies
santa_1.speak 
santa_1.eat_milk_and_cookies("chocolate chip")
p santa_1

#test celbrate_birthday and get_mad_at
santa_1.celebrate_birthday 
santa_1.get_mad_at("Rudolph")
p santa_1

#test gender setter
santa_1.gender = "male"
p santa_1

puts "Santa Claus is #{santa_1.age} years old and 
identifies as #{santa_1.ethnicity}."

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

#Create multiple santas with random genders, ethnicities, and ages

10.times do
	santas << Santa.new(example_genders.sample, example_ethnicities.sample, rand(141))
end

santa_count = 0
santas.each do |santa|
	santa_count +=1
	puts "Santa number #{santa_count} identifies as a #{santa.ethnicity} #{santa.gender} that is #{santa.age} years old "
end


#Bobolinks

# #Define Santa class and give it instance methods and some attributes.
# class Santa
# 	attr_reader :ethnicity, :age
# 	attr_accessor :gender
# 	def initialize (gender, ethnicity, age)
# 		puts "Initializing Santa instance ..."
# 		@gender = gender
# 		@ethnicity = ethnicity
# 		@reindeer_ranking = [
# 			"Rudolph", 
# 			"Dasher", 
# 			"Dancer", 
# 			"Prancer", 
# 			"Vixen", 
# 			"Comet", 
# 			"Cupid", 
# 			"Donner", 
# 			"Blitzen"]
# 		@age = age
# 	end

# 	def speak
# 		puts "Ho, ho, ho! Haaaappy holidays!" 
# 	end

# 	def eat_milk_and_cookies(cookie_type)
# 		puts "That was a good #{cookie_type}!" 
# 	end

# 	def celebrate_birthday
# 		@age += 1
# 	end

# 	def get_mad_at(reindeer_name)
# 		@reindeer_ranking.delete(reindeer_name)
# 		@reindeer_ranking.push(reindeer_name)
# 	end

# 	#def gender=(new_gender)
# 		#@gender = new_gender
# 	#end

# 	#def age
# 		#@age
# 	#end

# 	#def ethnicity
# 		#@ethnicity 
# 	#end
# end

# #Driver code to test class and methods

# #Should make a new Santa instance santa_1 with @gender = "Cisgender" and @ethnicity = "Native Hawaiian"
# santa_claus = Santa.new("Cisgender", "Native Hawaiian", 83)
# p santa_claus

# #Should return: Ho, ho, ho! Haaaappy holidays!
# santa_claus.speak

# #Should return: That was a good chocolate chip cookie!
# santa_claus.eat_milk_and_cookies("chocolate chip cookie")

# #Should add a year to age
# santa_claus.celebrate_birthday 
# p santa_claus

# #Should put "Rudolph" at the end of array
# santa_claus.get_mad_at("Rudolph")
# p santa_claus

# #Should put "Vixen" at the end of array
# santa_claus.get_mad_at("Vixen")
# p santa_claus

# #Driver code for setter method
# santa_claus.gender = "Female"
# p santa_claus

# #Driver code for getter methods
# puts "Santa Claus #{santa_claus.age} years old and 
# identifies as #{santa_claus.ethnicity}."

# #Initialization of 50 santas with random ethnicities, random genders, and random ages up to 141.
# santas = []
# santa_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# santa_gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# santa_age = []


# 50.times do |santa|
# 	santas << Santa.new(santa_gender.sample, santa_ethnicities.sample, santa_age = rand(141))
# end

# #Should push a new Santa in santas array with @gender = "Gender Fluid" and @ethnicity = "Asian"
# santas << Santa.new("Gender Fluid", "Asian", 94)
# #p santas

# #Iterate through santas and print attributes
# santas.each do |santa| 
# 	puts "This Santa is #{santa.age} years old and identifies as #{santa.gender} and #{santa.ethnicity}."
# end






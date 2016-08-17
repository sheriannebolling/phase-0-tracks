#Define Santa class and give it 3 instance methods and some attributes.
class Santa
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
end

#Driver code to test class and methods
santa_1 = Santa.new("Cisgender", "Native Hawaiian")
santa_1.speak
santa_1.eat_milk_and_cookies("chocolate chip cookie")


#Driver code of diverse initializations
santas = []
santa_gender = ["Female", "Male", "Agender", "Bigender", "Androgynous"]
santa_ethnicities = ["Black", "Latino", "White", "American Indian", "Alaskan Native"]
santa_gender.length.times do |i|
	santas << Santa.new(santa_gender[i], santa_ethnicities[i])
end

santas << Santa.new("Gender Fluid", "Asian")

p santas

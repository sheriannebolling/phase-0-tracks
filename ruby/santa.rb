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

#santa_1 = Santa.new

#santa_1.speak
#santa_1.eat_milk_and_cookies("chocolate chip cookie")

=begin
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
=end

santas = []
santa_gender = ["Female", "Male", "Agender", "Bigender", "Androgyne", "Androgynous", "Cisgender"]
santa_ethnicities = ["Black", "Latino", "White", "Asian", "American Indian", "Alaskan Native", "Native Hawaiian"]
santa_gender.length.times do |i|
	santas << Santa.new(santa_gender[i], santa_ethnicities[i])
end

p santas

=begin
Class ------------------------
Truck

Attributes ----------------
Color: varies
Transmission: varies
Age: varies

Methods -----------------------
Honk
Turn - takes argument direction
Go fast - takes argument speed
Rev
Stop
=end

#Create truck class
class Truck
	attr_reader :age
	attr_accessor :transmission, :color
	def initialize(color, transmission, age)
		puts "initializing truck instance ..."
		@color = color
		@transmission = transmission
		@age = age
	end

	def honk 
		puts "ah-ooo-ga, ah-ooh-gah, oo-ga"
	end

	def turn(direction)
		puts "Turns #{direction}"
	end

	def go_fast(speed)
		puts "Rooaaarrrr! You are going #{speed} miles an hour"
	end

	def rev
		puts "vooRRRR, vooRRR, vooRRR" 
	end

	def stop
		puts "Truck has stopped"
	end
end

f100 = Truck.new("red", "manual", 50)

#Driver code to test 
puts "Let's go for a drive! Let's take the #{f100.transmission} #{f100.color} #{f100.age} year old F100!"
f100.rev
f100.go_fast(80)
f100.honk
f100.turn("right")
f100.stop

#User interface

truck_array =[]

puts "Would you like to create a new truck? (type yes or no)"
create_truck = gets.chomp

while create_truck == "yes"
	puts "What color would you like your truck to be?"
	truck_color = gets.chomp

	puts "Would you like a manual or automatic transmission?"
	truck_transmission = gets.chomp

	puts "How old of a truck would you like?"
	truck_age = gets.chomp

	truck_array << Truck.new(truck_color, truck_transmission, truck_age)

	puts "Would you like to create a new truck? (type yes or no)"
	create_truck = gets.chomp

	if create_truck == "no"
	p truck_array
	end
end



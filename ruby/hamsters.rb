puts "What is the hamster's name?"
name = gets.chomp

puts "How loud is the hamster's volume level on a scale of 1 through 10?"
squeakiness = gets.chomp.to_i

puts "What is your hamster's fur color?"
fur = gets.chomp

puts "Is the hamster a good candidate for adoption?"
candidate = gets.chomp

puts "What is the hamsters estimated age?"
age = gets.chomp.to_i

if age == nil
	age = nil
end
	
puts "Hamster Name: #{name}"
puts "Volume Level: #{squeakiness}"
puts "Fur Color: #{fur}"
puts "Is Good Candidate: #{candidate}"
puts "Estimated Age: #{age}"



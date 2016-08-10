=begin 
Input - string (first and last name)
Output - string (fake name)
Set variables for first and last names and make them lowercase
Set variable for alphabet
Write method that swaps the first and last name
Write method that takes first and last names as aruguments
Write method that changes vowels to next vowel in alphabet
Write method that changes consonant to next consonant in alphabet
Add if statement that handles edge cases
Return string with first letter uppercase
Test "Felicia Torres" which should become "Vussit Gimodoe"
=end 

#Method swaps first and last name

def swap_names(name)
	name.downcase!
	name_array = name.split
	name_array.reverse!	
	name = name_array.join(" ")
	p name
	chars = name.split(//)
	p chars
	new_name = chars.join
	alias_names = {}

	alias_names.each {|real_name, fake_name| puts "#{real_name} is the real name of #{fake_name}" }
end





#User interface

puts "Would you like to get an alias name? Type yes to continue or type quit to exit program"
get_name = gets.chomp

if get_name == "quit"
	puts "Ok no problem"
elsif get_name == "yes"
	get_name == "yes"
else 
	puts "I dont understand"
end

while get_name == "yes"
		puts "What is the first and last name would you like to get an alias for?"
		name = gets.chomp
		swap_names(name)

		puts "Would you like to get an alias name, type yes to continue or type quit to exit program"
		get_name = gets.chomp	
end

puts "Thank you for using the alias-master!"



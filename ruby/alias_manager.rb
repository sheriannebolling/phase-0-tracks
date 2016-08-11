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

def swap_names(input)
	input.downcase!
	index = 0
	transformed_input = ""
	vowels = "aeiouya"
	consonants = "bcdfghjklmnpqrstvwxzb"
	while index < input.length
		current_letter = input[index]
		if current_letter == " "
			transformed_input[index] = " "
		elsif
			vowel_index = vowels.index(current_letter) 
			new_vowel_index = vowel_index.to_i+1
			transformed_input[index] = vowels[new_vowel_index]
		else
			consonant_index = consonants.index(current_letter) 
			new_consonant_index = consonant_index.to_i+1
			transformed_input[index] = consonants[new_consonant_index]
		end
		index += 1
	end
	name = transformed_input
	alias_names = {}
	name_array = name.split
	name_array.reverse!	
	new_name = name_array.join(" ")
	alias_names[:"#{new_name}"] = input
	p new_name
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
		input = gets.chomp
		swap_names(input)

		puts "Would you like to get an alias name, type yes to continue or type quit to exit program"
		get_name = gets.chomp	
end

puts "Thank you for using the alias-master!"



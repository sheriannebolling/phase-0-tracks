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
	alias_names = {}
	alias_names[:name] = name
	name.downcase!
	name_array = name.split
	name_array.reverse!	
	name = name_array.join(" ")
	p name
	chars = name.split(//)
	p chars
	chars.map! { |letter| letter.next }
	p chars
	new_name = chars.join
	alias_names[:new_name] = new_name
	p alias_names
end 

p swap_names("bolling sherianne")


def new_letter(input)
	index = 0
	transformed_input = ""
	vowels = "aeiouy"
	consonants = "bcdfghjklmnpqrstvwxz"
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
	return transformed_input	
end

p new_letter("bolling sherianne")


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



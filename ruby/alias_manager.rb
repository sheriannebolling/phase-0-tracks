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
		altered_input = input
		altered_input.downcase!
		index = 0
		transformed_input = ""
		vowels = "aeiouya"
		consonants = "bcdfghjklmnpqrstvwxzb"
		while index < altered_input.length
			current_letter = altered_input[index]
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
		transformed_name = transformed_input
		name = transformed_name.capitalize!
		name_array = name.split
		name_array.reverse!
		new_name = name_array.join(" ")
		new_name.capitalize!
		name_hash = {}	  
		name_hash[new_name] = input.capitalize!
		p name_hash	
		name_hash.each_pair do 
			|new_name, input| puts "#{new_name}" + " " + "is actually" + " " + "#{input}!"
		end	
end 

#Test code - should return:  "Vussit gimodoe is actually Felicia torres"
p swap_names("Felicia Torres")


#User interface

puts "Would you like to get an alias name? Type yes to continue or type quit to exit."
get_name = gets.chomp

if get_name == "quit"
	puts "Ok no problem"
elsif get_name == "yes"
	get_name == "yes"
else 
	puts "I dont understand"
end


while get_name == "yes"
		puts "What is the first and last name you like to get an alias for?"
		input = gets.chomp
		swap_names(input)

		puts "Would you like to get an alias name, type yes to continue or type quit to exit."
		get_name = gets.chomp
end


puts "Thank you for using the alias-master!"


# Input - first and last name string
# Output - reversed name with next consonants and next vowels
# create method that splits the name into an array and reverses the name
# create method that slits the reversed name into an array of letters
# create a variable of consonants 
# create a variable of vowels
# handle edge cases


#method that reverses names
def reverse_name(name)
	name.split.reverse.join(" ")
end

p reverse_name("sheri bolling")

name = "sheri bolling"

def next_letter(name)
	new_name = []
	name.split(//).map! do |letter|
		consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z","b"]
		#consonants = "bcdfghjklmnpqrstvwxyz"
		consonants_index = consonants.index
		if letter == consonants[consonants_index.to_i]
			letter = consonants[consonants_index + 1]
		end
		# if letter == ("aeiou"[0])
		# 	letter.sub!(/aeiou/, /eioua/)
		# end
		# 
		# 
		# vowels = "aeiou"
		# index = 0
		# while index < consonants.length
		# 		if (letter == consonants[index])
		# 			letter = consonants[index].next
		# 	# 	# elsif (name[letter] == vowels[letter]) 
		# 	# 	# 	name[vowels.next] 
		# 		end
		# 	letter.length += 1
		# end
	end
end

p next_letter("sheri bolling")


#Bobolinks
			# =begin 
			# Method Input - string (first and last name)
			# Method Output - string (fake name)
			# Program Input - strings of first and last names
			# Program Output - iterated hash listing string of real and fake names

			# Create hash to hold real and fake names
			# Create method to add real and fake names to hash
			# Set variables for first and last names and make them lowercase
			# Set variables for vowels and consonants
			# Write method that takes names as arguments
			# In method change vowels to next vowel in alphabet using if statement
			# In method change consonant to next consonant in alphabet using if statement
			# Check edge cases are handled
			# In method swap the first and last name
			# Return string with first letter uppercase
			# Test "Felicia Torres" which should become "Vussit Gimodoe"
			# Add user interface
			# Iterate through hash printing real and fake names in if/else statement
			# =end 


			# #Create hash to hold real and fake names
			# #Create method to add real and fake names to hash
			# #Use .map to capitalize 
			# name_hash = {}

			# def add_name_to_hash(real_name, fake_name, hash)
			# 	hash[real_name] = fake_name
			# end


			# #Method swaps first and last name
			# #Changes vowels to next vowel
			# #Changes consonants to next consonant
			# def swap_names(input, hash)
			# 		new_hash = hash
			# 		altered_input = input
			# 		altered_input.downcase
			# 		index = 0
			# 		transformed_input = ""
			# 		vowels = "aeioua"
			# 		consonants = "bcdfghjklmnpqrstvwxyzb"
			# 		while index < altered_input.length
			# 			current_letter = altered_input[index]
			# 			if current_letter == " "
			# 				transformed_input[index] = " "
			# 			elsif
			# 				vowel_index = vowels.index(current_letter) 
			# 				new_vowel_index = vowel_index.to_i+1
			# 				transformed_input[index] = vowels[new_vowel_index]
			# 			else
			# 				consonant_index = consonants.index(current_letter) 
			# 				new_consonant_index = consonant_index.to_i+1
			# 				transformed_input[index] = consonants[new_consonant_index]
			# 			end
			# 			index += 1
			# 		end
			# 		transformed_name = transformed_input
			# 		name = transformed_name.capitalize!
			# 		name_array = name.split
			# 		name_array.reverse!
			# 		name_array.map(&:capitalize!)
			# 		new_name = name_array.join(" ")


			# 		add_name_to_hash(input, new_name, new_hash)
			# end 

			# #Test code - should return:  "Vussit gimodoe is actually Felicia torres"
			# #p swap_names("Felicia Torres")


			# #Exit interface when user types quit
			# puts "Would you like to get an alias name? Type yes to continue or type quit to exit."
			# get_name = gets.chomp


			# #Loop through user interface and iterate through hash when ueser quits 
			# while get_name == "yes"
			# 		puts "What is the first and last name you like to get an alias for?"
			# 		input = gets.chomp
			# 		swap_names(input, name_hash)
			# 		p name_hash

			# 		puts "Would you like to get an alias name, type yes to continue or type quit to exit."
			# 		get_name = gets.chomp

			# 		if get_name == "quit"
			# 			puts "Ok no problem"
			# 			name_hash.each_pair do 
			# 				|input, new_name| puts "#{new_name}" + " " + "is actually" + " " + "#{input}!"
			# 			end	
			# 		elsif get_name == "yes"
			# 			get_name == "yes"
			# 		else 
			# 			puts "I dont understand"
			# 			name_hash.each_pair do 
			# 				|input, new_name| puts "#{new_name}" + " " + "is actually" + " " + "#{input}!"
			# 			end	
			# 		end
			# end
			# puts "Thank you for using the alias-master!"
		

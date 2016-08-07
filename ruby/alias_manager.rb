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


def swap_names(name)
	name_array = name.split
	name_array.reverse!
	return name_array
end

def vowel_next(name)
	index = 0
	vowel = "aeiou"
	consonant = "bcdfghjklmnpqrstvwxz"
	while index < name.length 
		letters = name.split
		if letters == consonant
			letters.next
		end
		index += 1
	end
end
puts swap_names("Felicia Torres")
puts vowel_next("Felicia Torres")

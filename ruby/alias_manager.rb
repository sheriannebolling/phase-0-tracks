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
	chars = name.split(//)
	p chars
end

p swap_names("Felicia Torres")




def next_vowel (name)
	name.downcase!	
	index = 0
	transformed_name = ""
	vowels = "aeiou"
	while index < name.length
		name_index = name[index]
		vowels_index = vowels[index]
		if name_index == vowels.each_char
			transformed_name = vowels[index].next
		end
		index += 1
	end
	return transformed_name	
end 

p next_vowel("Felicia Torres")




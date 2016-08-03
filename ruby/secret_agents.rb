=begin 
Encrypt
Create method that has input of string.
Create return variable
Loop through input string selecting each letter in turn.
Create if else statement to skip space character.
Modify each character to be one character head. 
Return variable 
=end


def encrypt(input)
	index = 0
	transformed_input = ""

	while index < input.length
		if input[index] == " "
			transformed_input[index] = " "
		else
			transformed_input[index] = input[index].next
		end
		index += 1
	end
	return transformed_input	
end

puts encrypt("hel lo")

=begin
Encrypt
Create method that has input of string.
Create return variable
Loop through input string selecting each letter in turn.
Create if else statement to skip space character.
Modify each character to be one character behind. 
Return variable 
=end

=begin
Create string for alphabet
Create variable and set it to input index
Find out what index letter is in alphabet
Subtract one from index
Set transformed input index = alphabet found index - 1
=end
	


def decrypt(input)
	index = 0
	transformed_input = ""
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	while index < input.length
		current_letter = input[index]
		if current_letter== " "
			transformed_input[index] = " "
		else
			alpha_index = alphabet.index(current_letter) 
			new_alpha_index = alpha_index-1
			transformed_input[index] = alphabet[new_alpha_index]
		end
		index += 1
	end
	return transformed_input	
end

puts decrypt("world")
=begin 
Encrypt
Create method that has input of string.
Create return variable
Loop through input string selecting each letter in turn.
Create if else statement to skip space character.
Modify each character to be one character head. 
Return variable

Decrypt
Create method that has input of string.
Create return variable
Loop through input string selecting each letter in turn.
Create if else statement to skip space character.
Modify each character to be one character behind. 
Return variable 

Create string for alphabet
Create variable and set it to input index
Find out what index letter is in alphabet
Subtract one from index
Set transformed input index = alphabet found index - 1 
=end

def encrypt(input)
	index = 0
	transformed_input = ""
	current_letter = ""

	while index < input.length
		if input[index] == " "
			transformed_input[index] = " "
		elsif current_letter == "z"
           transformed_input[index] = "a"
		else
			transformed_input[index] = input[index].next
		end
		index += 1
	end
	return transformed_input	
end
	
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

=begin
Ask encrypt or decrypt
Assign to variable
Ask for password they would like to enter
If encrypt run encrypt with encrypt password
Elsif decrypt run decrypt with decrypt password
Else we don't understand
Add 
=end


puts "Would you like to encrypt or decript a password?"
encrypt_decrypt = gets.chomp

puts "What would you like your password to be?"
password = gets.chomp

if encrypt_decrypt == "encrypt"
	puts encrypt(password)
elsif encrypt_decrypt == "decrypt"
	puts decrypt(password)
else 
	puts "We don't understand"
end


#test logic
puts encrypt("abc") #should return "bcd"
puts encrypt("zed") #should return "afe""
puts decrypt("bcd") #should return "abc"
puts decrypt("afe") #should return "zed"

#This is a nested method call which works by ruby evaluating what is in the innermost paranthesis first. 
#should return "swordfih"
puts decrypt(encrypt("swordfish"))


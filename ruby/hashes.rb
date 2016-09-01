
#Coyotes
# Input - client details
# Output - latest version of hash
# Create an empty hash
# Create user interface that asks for client data
# Pushes entered client data into hash with data type as
# 	key and data as the value.
# Convert input to correct data type using .to_i and .to_b
# Print hash to screen when user is finished with the questions
# Ask the user if they would like to update a key
# Update if yes and print latest hash otherwise print hash


#Create empty hash, attain client data, push client data into hash
client_info = {}

puts "What is the client's name?"
client_info[:name] = gets.chomp

puts "What is the client's address?"
client_info[:address] = gets.chomp

puts "What is the client's email?"
client_info[:email] = gets.chomp

puts "What is the client's phone number?"
client_info[:phone_number] = gets.chomp

puts "What is the client's age?"
client_info[:age] = gets.chomp.to_i

puts "How many children does the client have?"
client_info[:children] = gets.chomp.to_i

puts "What decor theme would the client like?"
client_info[:theme] = gets.chomp

puts "What is the client's favorite color?"
client_info[:color] = gets.chomp

puts "Does the client want architectural changes?"
client_info[:architectural_changes] = gets.chomp

#print hash
p client_info


#Use if statement to update key
puts "Would you like to update a key?(yes or no)?"
update = gets.chomp

if update == "yes"

	puts "What key would you like to update?"
	key_to_update = gets.chomp	

	puts "What would you like to update the value to?"
	new_value = gets.chomp

	if key_to_update == "name"
		client_info[:name] = new_value

	elsif key_to_update == "address"
		client_info[:address] = new_value

	elsif key_to_update == "email"
		client_info[:email] = new_value

	elsif key_to_update == "phone number"
		client_info[:phone_number] = new_value

	elsif key_to_update == "age"
		client_info[:age] = new_value

	elsif key_to_update == "children"
		client_info[:children] = new_value

	elsif key_to_update == "theme"
		client_info[:theme] = new_value

	elsif key_to_update == "color"
		client_info[:color] = new_value

	elsif key_to_update == "architectural changes"
		client_info[:architectural_changes] = new_value
	end
end


#prints updated hash
p client_info

puts "This is the latest client information entered:"

#prints latest data entered nicely
client_info.each do |info_type, client_info| 
	puts "#{info_type}: #{client_info}"   
end

	# =begin
	# #Bobolinks

	# # Input - client data 
	# # Create hash 
	# # Prompt user for data 
	# # Assign data as value for key
	# # Give user oppurtunity to update a key
	# # Output - print entire hash after all questions answered

	# #Create hash, prompt user, and add entered data to hash.

	# client_details = {}

	# puts "What is the client's name?"
	# name = gets.chomp
	# client_details[:name] = name

	# puts "What is the client's age?"
	# age = gets.chomp
	# client_details[:age] = age.to_i

	# puts "How many children does the client have?"
	# children = gets.chomp
	# client_details[:children] = children.to_i

	# puts "What decor theme would the client like?"
	# theme = gets.chomp
	# client_details[:theme] = theme

	# puts "Does the client have a budget?"
	# budget = gets.chomp
	# client_details[:budget] = budget

	# p client_details

	# #Allow user to update hash value. 

	# puts "Do you have any updates?(yes or none)"
	# update = gets.chomp
	# 	if update == "yes"
	# 		puts "What key would you like to update?"
	# 		key = gets.chomp
	# 		puts "What would you like to update the value to?"
	# 		value = gets.chomp
	# 	elsif update == "none"
	# 		puts "Ok no updates will be made"

	# 	end		

	# 	if key == "name"
	# 		client_details.merge!(:name => value)
	# 	elsif key == "age"
	# 		client_details.merge!(:age => value.to_i)
	# 	elsif key == "children"
	# 		client_details.merge!(:children => value.to_i)
	# 	elsif key == "theme"
	# 		client_details.merge!(:theme => value)
	# 	elsif key == "budget"
	# 		client_details.merge!(:budget => value)
	# 	end

	# p client_details

	# =end
=begin
Input - client data 
Create hash 
Prompt user for data 
Assign data as value for key
Give user oppurtunity to update a key
Output - print entire hash after all questions answered
=end


#Create hash, prompt user, and add entered data to hash.

client_details = {}

puts "What is the client's name?"
name = gets.chomp
client_details[:name] = name

puts "What is the client's age?"
age = gets.chomp
client_details[:age] = age.to_i

puts "How many children does the client have?"
children = gets.chomp
client_details[:children] = children.to_i

puts "What decor theme would the client like?"
theme = gets.chomp
client_details[:theme] = theme

puts "Does the client have a budget?"
budget = gets.chomp
client_details[:budget] = budget

p client_details

#Allow user to update hash value. 

puts "Do you have any updates?(yes or none)"
update = gets.chomp
	if update == "yes"
		puts "What key would you like to update?"
		key = gets.chomp
		puts "What would you like to update the value to?"
		value = gets.chomp
	elsif update == "none"
		puts "Ok no updates will be made"

	end		

	if key == "name"
		client_details.merge!(:name => value)
	elsif key == "age"
		client_details.merge!(:age => value.to_i)
	elsif key == "children"
		client_details.merge!(:children => value.to_i)
	elsif key == "theme"
		client_details.merge!(:theme => value)
	elsif key == "budget"
		client_details.merge!(:budget => value)
	end

p client_details


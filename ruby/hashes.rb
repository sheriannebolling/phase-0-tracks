=begin
Input - client data
Create hash with keys to keep track of assigned data
Prompt user for data and assign data as value for key
Give user oppurtunity to update a key
Output - print entire hash after all questions answered
=end


puts "What is the client's name?"
name = gets.chomp
puts "What is the client's age?"
age = gets.chomp
puts "How many children does the client have?"
children = gets.chomp
puts "What decor theme would the client like?"
theme = gets.chomp

client_details = {
	name: name,
	age: age,
	children: children,
	decor_theme: theme
}

p client_details

def update_value()
	puts "Would you like to update a key?"
	update = gets.chomp
	if update == yes
		puts "What key would you like to update?"
		key = gets.chomp
	else
		puts "Ok no updates will be made"
	end		
end
p client_info


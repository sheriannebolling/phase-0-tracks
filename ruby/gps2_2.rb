# Create an empty hash for master grocery list

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create a method that accepts parameter of string of groceries and a hash that will be added into master grocery list
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash with grocery item and quantity

hash = {}

def grocery_list(string, hash)
	array_groceries = string.split(" ")
	array_groceries.each do|i|
		hash[i.to_sym] = 1 
	end
	p hash
end

#Test grocery_list method
#grocery_list("Lemonade Milk", hash)

# Method to add an item to a list
# input: item name, optional quantity, hash
# steps:Take string as an argument with an optional qantity number. Add into hash. Takes a default value.
# output: Print the updated hash

#Add item method 
def add_item_to_list(string, quantity, hash)
	hash[string.to_sym] =  (hash[string.to_sym] || 0)  + quantity
	p hash
end

#Test add method

add_item_to_list("Lemonade", 2, hash)
add_item_to_list("Tomatoes", 3, hash)
add_item_to_list("Onions", 1, hash)
add_item_to_list("Ice Cream", 4, hash)

# Method to remove an item from the list
# input: item name and hash
# steps: if statement - if hash key exists delete 
# output: hash less the deleted key

#Subtract item method
def subtract_from_list(string, hash)
	if hash[string.to_sym] 
		hash.delete(string.to_sym)
	else 
	end
	p hash
end

#Test subtract item
subtract_from_list("Lemonade", hash)

# Method to update the quantity of an item
# input: item, quantity, hash
# steps: use .merge! to replace quantity
# output: hash with updated quantity of item

def update_quantity(string, quantity, hash)
	hash[string.to_sym]
	hash.merge!(string.to_sym => quantity)
	p hash
end

#Test update quantity
update_quantity("Ice Cream", 1, hash)

# Method to print a list and make it look pretty
# input: hash
# steps: use .each_pair to print list
# output: Grocery list of items in hash

def print_hash(hash)
	puts "Grocery List:"
	hash.each_pair do 
		|item, quantity| puts "#{item}: Get #{quantity}"
	end
end

print_hash(hash)

=begin
Reflect:
What did you learn about pseudocode from working on this challenge?
	I need to be more specific in my pseudocode about what I plan to do and what the inputs and outputs are. The more detail the
	better especially when it comes to what I am going to use to accomplish the step rather than just an idea of the step.
What are the tradeoffs of using arrays and hashes for this challenge?
	You can use different methods on them so it really depends on what you are trying to accomplish and the type of data you 
	are trying to store. For this challenge creating an empty hash and then turning a string into an array and storing it in the hash worked 
	well since we needed to add quatities and items not just a list of items. 
What does a method return?
	The value of the last statement in the method.
What kind of things can you pass into methods as arguments? 
	You can pass strings, hashes, arrays, integers, default values.
How can you pass information between methods?
	You can pass information between methods by using parameters and passing info through the arguments.
What concepts were solidified in this challenge, and what concepts are still confusing?
	I was able to solidify my understanding of breaking down challenges into small pieces. 
	Using .each to iterate through hashes and arrays has become clearer for me as well as maniputating 
	data (adding and subtracting) in hashes and arrays. I still get confused sometimes when I am starting to create the data structure and 
	the first method. It can become overwhelming deciding how to start. Better pseudo code will help me with this.
=end

# Create an empty hash for master grocery list
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create a method that accepts parameter of string of groceries and a hash that will be added into master grocery list
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [hash with grocery item and quantity]

hash = {}

def grocery_list(string, hash)
	array_groceries = string.split(" ")
	array_groceries.each do|i|
		hash[i.to_sym] = 1 
	end
	p hash
end

#Test grocery_list method
grocery_list("Lemonade Milk", hash)

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
add_item_to_list("Apple", 5, hash)
add_item_to_list("Milk", 5, hash)
add_item_to_list("OJ", 3, hash)

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
subtract_from_list("Milk", hash)

# Method to update the quantity of an item
# input: 
# steps: 
# output:



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


#Coyotes

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza") and hash
# steps: 
  # Create method that takes a string and hash pushes the string into a hash as keys 
  # Set default quantity as values
  # print the list to the console 
# output: Hash of items and amounts

grocery_hash = {}

def create_grocery (list, hash)
	list_array = list.split
	list_array.each do |list|
		hash[list.to_sym] = 1
	end
	hash
end

#Driver code to test method
list = "carrots apples cereal pizza"
create_grocery(list, grocery_hash)
p grocery_hash

# Method to add an item to a list
# input: item name, hash, and optional quantity
# steps: Create method that takes an item as a parameter and pushes it into the grocery hash
# output: Hash of items and amounts with item added


def add_item(hash, item, quantity = 1)
		hash[item.to_sym] = quantity
end

add_item(grocery_hash, "orange", 2)
p grocery_hash



# Method to remove an item from the list
# input: item name and hash
# steps: Create a method that takes an item and removes it from the groceries hash
# output: Hash of items and amounts with item removed

def remove_item(hash, item)
		hash.delete(item.to_sym)
end

remove_item(grocery_hash, "orange")
p grocery_hash

# Method to update the quantity of an item
# input: Item name, hash, and quantity to update to
# steps: Create a method that takes an item and quantity and changes that item to have that quantity
# output: Hash of items with updated quantity

def update_quantity(hash, item, quantity)
	hash.merge!(item.to_sym => quantity)
end

update_quantity(grocery_hash, "carrots", 3)
p grocery_hash

# Method to print a list and make it look pretty
# input: hash
# steps: Create a method that takes a hash and prints in a user friendly way
# output: Readable and user friendly list

def print(hash)
	puts "Here are the items on your grocery list:"
	hash.each do |item, quantity|
		puts "#{item} = #{quantity} "
	end
end

print(grocery_hash)


#Bobolinks
# # Create an empty hash for master grocery list

		# # Method to create a list
		# # input: string of items separated by spaces (example: "carrots apples cereal pizza")
		# # steps: 
		#   # Create a method that accepts parameter of string of groceries and a hash that will be added into master grocery list
		#   # set default quantity
		#   # print the list to the console [can you use one of your other methods here?]
		# # output: hash with grocery item and quantity

		# hash = {}

		# def grocery_list(string, hash)
		# 	array_groceries = string.split(" ")
		# 	array_groceries.each do|i|
		# 		hash[i.to_sym] = 1 
		# 	end
		# 	p hash
		# end

		# #Test grocery_list method
		# #grocery_list("Lemonade Milk", hash)

		# # Method to add an item to a list
		# # input: item name, optional quantity, hash
		# # steps:Take string as an argument with an optional quantity number. Add into hash. Takes a default value.
		# # output: Print the updated hash

		# #Add item method 
		# def add_item_to_list(string, quantity, hash)
		# 	hash[string.to_sym] =  (hash[string.to_sym] || 0)  + quantity
		# 	p hash
		# end

		# #Test add method

		# add_item_to_list("Lemonade", 2, hash)
		# add_item_to_list("Tomatoes", 3, hash)
		# add_item_to_list("Onions", 1, hash)
		# add_item_to_list("Ice Cream", 4, hash)

		# # Method to remove an item from the list
		# # input: item name and hash
		# # steps: if statement - if hash key exists delete 
		# # output: hash less the deleted key

		# #Subtract item method
		# def subtract_from_list(string, hash)
		# 	if hash[string.to_sym] 
		# 		hash.delete(string.to_sym)
		# 	else 
		# 	end
		# 	p hash
		# end

		# #Test subtract item
		# subtract_from_list("Lemonade", hash)

		# # Method to update the quantity of an item
		# # input: item, quantity, hash
		# # steps: use .merge! to replace quantity
		# # output: hash with updated quantity of item

		# def update_quantity(string, quantity, hash)
		# 	hash[string.to_sym]
		# 	hash.merge!(string.to_sym => quantity)
		# 	p hash
		# end

		# #Test update quantity
		# update_quantity("Ice Cream", 1, hash)

		# # Method to print a list and make it look pretty
		# # input: hash
		# # steps: use .each_pair to print list
		# # output: Grocery list of items in hash

		# def print_hash(hash)
		# 	puts "Grocery List:"
		# 	hash.each_pair do 
		# 		|item, quantity| puts "#{item}: Get #{quantity}"
		# 	end
		# end

		# print_hash(hash)

		# =begin
		# Reflect:
		# What did you learn about pseudocode from working on this challenge?
		# 	I need to be more specific in my pseudocode about what I plan to do and what the inputs and outputs are. The more detail the
		# 	better especially when it comes to what I am going to use to accomplish the step rather than just an idea of the step.
		# What are the tradeoffs of using arrays and hashes for this challenge?
		# 	You can use different methods on them so it really depends on what you are trying to accomplish and the type of data you 
		# 	are trying to store. For this challenge creating an empty hash and then turning a string into an array and storing it in the hash worked 
		# 	well since we needed to add quatities and items not just a list of items. 
		# What does a method return?
		# 	The value of the last statement in the method.
		# What kind of things can you pass into methods as arguments? 
		# 	You can pass strings, hashes, arrays, integers, default values.
		# How can you pass information between methods?
		# 	You can pass information between methods by using parameters and passing info through the arguments.
		# What concepts were solidified in this challenge, and what concepts are still confusing?
		# 	I was able to solidify my understanding of breaking down challenges into small pieces. 
		# 	Using .each to iterate through hashes and arrays has become clearer for me as well as maniputating 
		# 	data (adding and subtracting) in hashes and arrays. I still get confused sometimes when I am starting to create the data structure and 
		# 	the first method. It can become overwhelming deciding how to start. Better pseudo code will help me with this.
		# =end

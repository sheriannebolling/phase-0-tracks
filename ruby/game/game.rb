# Outside class
	# Input: Word given by user and guesses by second user
	# Create a variable that counts the number of guesses
	# Create a while loop that allows the user to guess until there are no guesses left.
	# Output: Message congratulating or taunting


# Create a class 
	# Create a variable to hold the word user-1 enters. 
	# Create a variable to hold the guess user-2 enters - The variable should store the guesses
		# Create a method to create a new variable that holds an array of letters of the word user-1 enters.
		# Create a method to create another array of "_" that matches the length of the word.
		# Create a method to check if guess matches
			# If guess matched any of the letters of the  word(using iteration) change the index in 
			# the _ variable to that letter. 
		# Create a method to check if the guess is a repeat
			# If the guess doesn’t match a previous guess the count goes down by one
			# If the guess matches a previous guess the count does not go down.
		# Create a method to print 
			# Print array on one line with spaces.
			# Print new version of array after each guess
		# Create a method to check if win
			# If the new array is equal to the array of the word variable then display 
			# congratulatory message if not a taunting message.
				

class Game
	attr_reader :count, :match
	def initialize(word_answer)
		puts "initializing new game"
		@word_answer = word_answer
		@guess_array = Array.new(0)
	end

	def guesses
		@guess_array << @letter_guess
		@guess_array
	end

	def make_array
		@word_answer_array = @word_answer.split(//)
	end

	def make_blank_array
		blank_array_length = @word_answer.length
		@blank_array = []
		blank_array_length.times do |char|
			@blank_array << " _ "
		end 
		@blank_array
	end

	def match(letter_guess)
		@letter_guess = letter_guess
		index = 0
		while index < @word_answer.length 
			if @letter_guess == @word_answer[index]
				@blank_array[index] = @letter_guess
			end
			index += 1
		end
		@blank_array
	end

	def print_update
		puts "#{match(@letter_guess).join}"	
		match(@letter_guess).join
	end

	def win(count)
		if (count == 0) && (@word_answer_array == @blank_array)
			puts "Congrats you win!"
			win = true
		elsif (count == 0) && (@word_answer_array != @blank_array)
			puts "You did not guess the word this time Bwahhh hahhahahah!"
			win = false
		end
		win
	end

	def repeat
		@guess_array.include?(@letter_guess)
	end
end

#User interface

puts "User 1 please enter the word you would like user 2 to guess."
word_answer = gets.chomp
 
game_1 = Game.new(word_answer)

#Creates an array of letters of the word
game_1.make_array
		
#Creates new blank word array to guess from
game_1.make_blank_array
p game_1.make_blank_array.join


#Lets the user know their number of guesses
puts "You have this many guesses:"
p word_answer.length


#Allows user 2 to guess until they have no guesses
#Updates them on the word and number of guesses
@count = word_answer.length
while @count > 0
	puts "User 2 please guess a letter"
	letter_guess = gets.chomp
	game_1.match(letter_guess) 
	game_1.print_update
	
	puts "You have this many guesses left:"
	if game_1.repeat == false
		@count -= 1
	end
	p @count
	game_1.guesses
	game_1.win(@count)
end








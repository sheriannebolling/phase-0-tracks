# Outside class
	# Input: Word given by user and guesses by second user
	# Create a while loop that allows the user to guess until there are no guesses left.
	# Output: Message congratulating or taunting

# Create a class 
	# Create a variable to hold the word user-1 enters. 
	# Create a variable to hold the guess user-2 enters - The variable should store the guesses
	# Create a variable that counts the number of guesses
		# Create a method to create a new variable that holds an array of letters of the word user-1 enters.
		# Create a method to create another array of "_" that matches the length of the word.
		# Create a method to check if guess matches
			# If guess matched any of the letters of the  word(using iteration) change the index in 
			# the _ variable to that letter. 
		# Create a method to count
			# If the guess doesn’t match a previous guess the count goes down by one
			# If the guess matches a previous guess the count does not go down.
			# Prints to try again they have already guessed that letter
		# Create a method to print 
			# Print array on one line with spaces.
			# Print new version of array after each guess
		# Create a method to check if win
			# If the new array is equal to the array of the word variable then display 
			# congratulatory message if not a taunting message.
				

class Game
	def initialize(word_answer)
		puts "initializing new game"
		@word_answer = word_answer
		@count = word_answer.length - 1
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

	def count_down 
		if @match == true
			@count -= 1
		end
		 @count
	end

	def match(letter_guess)
		index = 0
		@match = false
		while index < @word_answer.length 
			if letter_guess == @word_answer[index]
				@blank_array[index] = letter_guess	
				@match = true
			end
			index += 1
		end
		@blank_array
	end

	def print_update
		p @blank_array.join
	end

	def win
		if (@count == 0) && (@word_answer_array == @blank_array)
			puts "Congrats you win!"
			win = true
		elsif (@count == 0) && (@word_answer_array != @blank_array)
			puts "You did not guess my word this time Bwahhh hahhahahah!"
			win = false
		end
		win
	end
end

	



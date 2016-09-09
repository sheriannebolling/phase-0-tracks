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
	# @word_answer
	# @count
	def initialize(word_answer)
		puts "initializing new game"
		@word_answer = word_answer
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

	def guess_count
		@count = @word_answer.length
	end

	def match(letter_guess)
		index = 0
		while index < @word_answer.length 
			if letter_guess == @word_answer[index]
				@blank_array[index] = letter_guess
			end
			index += 1
		end
		@blank_array
	end

	def print_update(letter_guess)
		puts "#{match(letter_guess).join}"
		
	end

end

#Driver scode
puts "User 1 please enter the word you would like user 2 to guess."
word_answer = gets.chomp

game_1 = Game.new(word_answer)
		
game_1.make_blank_array
p game_1.make_blank_array.join

puts "You have this many guesses left:"
p game_1.guess_count

count = word_answer.length

while count > 0
	puts "User 2 please guess a letter"
	letter_guess = gets.chomp
	game_1.match(letter_guess)
	game_1.print_update(letter_guess)
		
	count -= 1
end








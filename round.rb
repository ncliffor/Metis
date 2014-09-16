class Round
	MAXIMUM_GUESSES = 3
	#Round.new would call this method
	def initialize
		@answer = rand(1..10)
		@number_of_guesses = 0
	
	end

	attr_reader :number_of_guesses
	#same as
	#def number_of_guesses
		#@number_of_guesses
	#end

	def play
		puts "----- NEXT ROUND -----"
		MAXIMUM_GUESSES.times do
			print "Guess a number> "
			#puts "answer is #{@answer}" #--to check correct
			guess = gets.chomp
			guess = guess.to_i
			@number_of_guesses += 1

			if correct?(guess)
				tell_user_they_are_correct
				@won = true
				break
			else
				tell_user_they_are_incorrect
			end
		end
	end

	def won?
		@won
	end
		
	private

	def tell_user_they_are_correct
		puts "YOU ARE CORRECT!..."
	end

	def tell_user_they_are_incorrect
		puts "Nope, try again."
	end

	def correct?(guess)
		guess == @answer
		#puts "Answer is #{answer}; guess was #{guess}" --to show each
	end
end
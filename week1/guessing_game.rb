require "./round"
#looks for ruby file in same directory with this name

class GuessingGame #camel style naming
	NUMBER_OF_ROUNDS = 3 #constants are all caps
						#this is available within all of class
						#can access within scope, and deeper into class, method, etc.

	def initialize 
		@total_number_guesses = 0.0 #snake-case # @ gives access to all rather than just within method
		@wins = 0
	end
			#methods wont cross, need @ to share

	def play
		puts "Hello, welcome to my game."

		NUMBER_OF_ROUNDS.times do
			round = Round.new
			round.play
			puts "You made #{round.number_of_guesses} guesses."
			@total_number_guesses += round.number_of_guesses
			
			if round.won?
				@wins += 1
			end
		end

		def average_guesses
			@total_number_guesses / NUMBER_OF_ROUNDS			
		end

		puts
		puts "Average guesses per round: #{average_guesses}"
		#puts "Average guesses per round: #{@total_number_guesses/NUMBER_OF_ROUNDS}"
		puts "You won #{@wins} times"
	end
end

guessing_game = GuessingGame.new
guessing_game.play

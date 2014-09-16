class FlashcardGame
	def play
		loop do 
			deck = ask_user_which_deck
			if deck == ""
				puts "exiting"
				break
			else
				puts "would play"
			end
		end		
	end

	private

	def ask_user_which_deck
		print "Which deck would you like? (leave blank to exit)> "
		deck = gets.chomp
		puts deck
		deck
	end
end

flashcard_game = FlashcardGame.new
flashcard_game.play
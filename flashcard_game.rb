class FlashcardGame
	def initialize(decks)
		@decks = decks
	end

	def play
		loop do 
			list_out_decks
			deck = ask_user_which_deck
			if deck
				puts "------ New Round!! ------"
				puts "We\'ll use the' #{deck.name} deck."
				deck.play
			else
				puts "exiting"
				break
			end
		end		
	end

	private

	def list_out_decks
		@decks.each {|decks| puts decks.name}
	end

	def ask_user_which_deck
		print "Which deck would you like? (leave blank to exit)> "
		requested_deck = gets.chomp.capitalize
		deck = @decks.find do |deck| #only available between "do" "end"
			deck.name == requested_deck
		end
	end
end



require "./deck"
require "./card"

class FlashcardGame
	def initialize(decks)
		@decks = decks
	end

	def play
		loop do 
			list_out_decks
			deck = ask_user_which_deck
			if deck
				puts "We would play #{deck.name}"
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
		requested_deck = gets.chomp
		deck = @decks.find do |deck|
			deck.name == requested_deck
		end
	end
end

decks = []

spanish_cards = []
spanish_cards << Card.new("Gato", "Cat")
spanish_cards << Card.new("Perro", "Dog")
decks << Deck.new("Spanish", spanish_cards)

japanese_cards = []
japanese_cards << Card.new("Neko", "Cat")
japanese_cards << Card.new("Inu", "Dog")
decks << Deck.new("Japanese", japanese_cards)


flashcard_game = FlashcardGame.new(decks)
flashcard_game.play
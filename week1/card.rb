class Card
	def initialize(front_and_back)
		@front = front_and_back[:front]
		@back = front_and_back[:back]
	end

	def play
		print "What is #{@back}? "
		if gets.chomp.capitalize == "#{@front}"
			puts "Correct!"
		else
			puts "No, wrong, sorry"
		end
	end
end
class LockerState
	def initialize
		@lockers = (1..100)
		@student = (1..100)
		@open_or_closed = []
	end

	def run
		start_with_lockers_closed
		students_go_through_lockers
		@open_or_closed.each_with_index do |line, index|
			puts "#{index + 1} #{line}"
		end
	end
	
	private

	def start_with_lockers_closed
		100.times do 
			@open_or_closed << "Closed"
		end
	end

	def students_go_through_lockers
		@student.each do |student_number|
			@lockers.each do |locker_number|
				if locker_number % student_number == 0
					toggle_locker(locker_number)
				end
			end
		end
	end


	def toggle_locker(index)
		if @open_or_closed[index-1] == "Closed"
			@open_or_closed[index-1] = "Open"
		else
			@open_or_closed[index-1] = "Closed"
		end
	end
end

lockers_state = LockerState.new
lockers_state.run



class Pair
	def initialize(key, value)
		@key = key
		@value = value
	end

	attr_reader :key
	# attr_reader :value
	# =>  def value
	# =>     @value = value
	# =>  end
	# attr_writer :value
	# =>  def value=(new_value)
	# => 	@value = new_value
	# =>  end
	attr_accessor :value
	# both attr_reader and attr_writer combined


end

pair = Pair.new("Gabe", 26)
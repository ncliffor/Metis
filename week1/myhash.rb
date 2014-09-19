require "./pair"

class MyHash
	def initialize
		@pairs = [Pair.new("Gabe", 26)] # need brackets around outside to put pair in array
	end

	def [](key)
		found_pair = find_pair_with_key(key)
		
		if found_pair
			found_pair.value
		end
	end

	def []=(key, new_value)
		found_pair = find_pair_with_key(key)
		found_pair.value = new_value
	end

	private

	def find_pair_with_key(key)
		@pairs.find do |pair|	#found_pair first to store results in
			pair.key == key 	# {|pair| pair.key == key} is the same
		end
	end
end

myhash = MyHash.new
myhash["Gabe"] = "28"
puts myhash["Gabe"]
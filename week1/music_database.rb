require "CSV"

class MusicDatabase

	def initialize
		@artist_to_song = {}
	end

	def read_database
		set_artist_and_track_name
		puts @artist_to_song
	end
	
	def set_artist_and_track_name
		CSV.foreach("music.csv", {headers: true}) do |row|
			
			artist = row["Artist"]
			track_name = row["Name"]
			populate_database(artist, track_name)
		end
	end

	def populate_database(artist, track_name)
		if !@artist_to_song[artist]
			@artist_to_song[artist] = []
		end
		@artist_to_song[artist] << track_name
	end


end

music_database = MusicDatabase.new
music_database.read_database

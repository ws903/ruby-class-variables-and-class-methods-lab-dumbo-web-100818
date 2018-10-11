class Song
	attr_reader(:name, :artist, :genre)

	@@count = 0
	@@songs = []
	@@artists = []
	@@genres = []

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre

		@@songs.push(name)
		@@artists.push(artist)
		@@genres.push(genre)
		@@count += 1
	end

	def self.count
		@@count
	end

	def self.songs
		@@songs
	end

	def self.artists
		@@artists.uniq
	end

	def self.genres
		@@genres.uniq
	end

	def self.genre_count
		genre_hash = {}

		@@genres.each { |genre|
			if genre_hash.key?(genre)
				genre_hash[genre]=genre_hash[genre]+1
			else
				genre_hash[genre]=1
			end
		}
		return genre_hash
	end

	def self.artist_count
		artist_hash = {}

		@@artists.each { |artist|
			if artist_hash.key?(artist)
				artist_hash[artist]=artist_hash[artist]+1
			else
				artist_hash[artist]=1
			end
		}
		return artist_hash
	end
end
class Artist
	attr_accessor :name
	attr_reader :songs

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
		@@all << self
	end

	def add_song(song)
		song.artist = self
		@songs << song
	end

	def add_song_by_name(name)
		song = Song.new(name)
		add_song(song)

	end

	def self.song_count
		count = 0
		@@all.each { |artist| count += artist.songs.size }
		count
	end
end
# Song class such that an individual song is initialized with a name, artist and genre.
class Song
    attr_accessor :name, :artist, :genre
    @@genres = [] 
    @@artists = []
    @@count = 0

    def initialize(name, artist, genre )
        @@count +=1
        @name = name 
        @@artists << (@artist = artist)
        @@genres << (@genre = genre)
    end 

    # returns the total number of songs created
    def self.song_count 
        @@count
    end

    # returns an array of all of the artists of the existing songs
    def self.artists
        @@artists.uniq
    end 

    # returns an array of all of the genres of existing songs
    def self.genres 
        @@genres.uniq
    end  

    # returns a hash in which the keys are the names of each genre
    def self.genre_count 
        genre_count = {}

        @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] += 1
            else
               genre_count[genre] = 1 
            end
        return genre_count 
    end 
    # returns a hash in which the keys are the names of each artist
    def self.artist_count
        artist_count={}
        
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else 
                artist_count[artist] = 1 
            end 
        return artist_count 
    end 

end 
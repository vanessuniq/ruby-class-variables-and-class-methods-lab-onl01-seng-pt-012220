class Song
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1 
    @@genres << @genre
    @@artists << @artist 

  end
  
  def self.count
      @@count
    end
    
    def self.artists
      @@artists.uniq
    end
    
    def self.genres
      @@genres.uniq
    end
    
    def self.genre_count
      genre_count = {}
      @@genres.each do |genre| 
        if genre_count[genre].nil?
        end 
          genre_count[genre] = 0
        genre_count[genre] += 1
      
      end
      genre_count
    end
    
    def self.artist_count
      artist_count = {}
      @@artists.each {|artist| artist_count[artist] += 1}
      artist_count
    end
end
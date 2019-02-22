class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  
  @@genres = []

  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count_hash = {}
    @@genres.uniq.each do |genre|
      count = 0
      @@genres.each do |other_genre|
        if genre == other_genre
          count += 1
        end
      end
      genre_count_hash[genre] = count
    end
    genre_count_hash
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    artist_count_hash = {}
    @@artists.uniq.each do |artist|
      count = 0
      @@artists.each do |other_artist|
        if artist == other_artist
          count += 1
        end
      end
      artist_count_hash[artist] = count
    end
    artist_count_hash
  end

end

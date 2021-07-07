require "pry"

class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []
@@genre_count = {}
@@artist_count = {}

  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@artists << artist
    @@genres << genre
    # binding.pry
    @@count += 1
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
    x = Hash.new(0)
    @@genres.each do |element|
      x[element] += 1
    end
    @@genre_count = x
  end

  def self.artist_count
    x = Hash.new(0)
    @@artists.each do |element|
      x[element] += 1
    end
    @@artist_count = x
  end

end

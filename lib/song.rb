require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists.push(artist)
    @@count += 1
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.general_count(countwhat)
    count_hash = {}
    countwhat.each {|string|
      count_hash.has_key?(string) ? count_hash[string] += 1 : count_hash[string] = 1}
    count_hash
  end

  def self.genre_count
    general_count(@@genres)
  end

  def self.artist_count
    general_count(@@artists)
  end

end

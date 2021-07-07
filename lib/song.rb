require 'pry'
class Song

attr_accessor :name, :artist, :genre
@@count = 0
@@artists = []
@@genres = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@artists << @artist
  @@genres << @genre
end

def self.count
  @@count
end

def self.artists
  new_array = []
  @@artists.each do |ind_artist|
    if !new_array.include?(ind_artist)
      new_array << ind_artist
    end
  end
  new_array
end

def self.genres
  new_array = []
  @@genres.each do |ind_genre|
    if !new_array.include?(ind_genre)
      new_array << ind_genre
    end
  end
  new_array
end

def self.genre_count
  genre_hash = {}
  @@genres.each do |specific_genre|
    if !genre_hash.has_key?(specific_genre)
      genre_hash[specific_genre] = 1
    else
      genre_hash[specific_genre] += 1
end
end
  genre_hash
end

def self.artist_count
  artist_hash = {}
  @@artists.each do |specific_artist|
    if !artist_hash.has_key?(specific_artist)
      artist_hash[specific_artist] = 1
    else
      artist_hash[specific_artist] += 1
end
end
  artist_hash
end

end

require 'Pry'
require_relative 'runner.rb'

class Song

  attr_accessor :name, :artist, :genre

  @@genres = []
  @@artists = []
  @@count = 0
  @@genre_count_hash = {}
  @@artist_count_hash = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << @genre
    @@count += 1
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

  def self.genre_count
    @@genres.each do |genre|
      if !@@genre_count_hash.has_key?(genre)
        @@genre_count_hash[genre] = 1
      else
        @@genre_count_hash[genre] += 1
      end
    end
    @@genre_count_hash
  end

  def self.artist_count
    @@artists.each do |artist|
      if !@@artist_count_hash.has_key?(artist)
        @@artist_count_hash[artist] = 1
      else
        @@artist_count_hash[artist] += 1
      end
    end
    @@artist_count_hash
  end
end

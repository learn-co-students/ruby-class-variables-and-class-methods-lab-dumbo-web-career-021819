class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre

    @@artists << @artist
    @@genres << @genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    songs_per_genre = {}
    @@genres.map do |genre|
      if songs_per_genre[genre] == nil
        songs_per_genre[genre] = 1
      else
        songs_per_genre[genre] += 1
      end
    end
    return songs_per_genre
  end

  def self.artist_count
    artists_per_genre = {}
    @@artists.map do |artist|
      if artists_per_genre[artist] == nil
        artists_per_genre[artist] = 1
      else
        artists_per_genre[artist] += 1
      end
    end
    return artists_per_genre
  end








end

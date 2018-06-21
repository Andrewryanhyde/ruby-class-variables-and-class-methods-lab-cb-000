class Song
  attr_accessor :name, :artist, :genre
  @@song_count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@song_count += 1
    @@genres << :genre
    @@artists << :artist
  end

  def self.count
    @@song_count
  end

  def self.genres
    @@genres
  end

  def self.artists
    @@artists
  end

  def self.genre_count
    genres_hash = {}
    @@array.each do |genre|
      if @@genres_hash.include?(genre)
        genres_hash[genre] +=1
      else
        genres_hash[genre] = 1
      end
    end
  end

  def self.artist_count
    artists_hash = {}
    @@artists.each do |artist|
      if @@artists_hash.include?(artist)
        artists_hash[artist] =+ 1
      else
        artists_hash = 1
      end
    end
  end


end

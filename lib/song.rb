class Song
  attr_accessor :name, :artist, :genre
  @@song_count = 0
  @@genres = []

  def initialize
    @@song_count += 1
    @@genres << :genre
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


end

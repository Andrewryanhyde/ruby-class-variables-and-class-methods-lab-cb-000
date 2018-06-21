class Song
  attr_accessor :name, :artist, :genre
  @@song_count = 0
  @@genres = []
  @@artists = []

  def initialize
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
        @@genres[genre] = 1
      end
    end
  end


end

class Song
  attr_accessor :name, :artist, :genre
  @@song_count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @song_name = name
    @artist = artist
    @genre = genre
    @@song_count += 1
    @@genres << genre
    @@artists << artist
  end


  def self.count
    @@song_count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    genres_hash = {}
    @@genres.each do |genre|
      if genres_hash.include?(genre)
        genres_hash[genre] +=1
      else
        genres_hash[genre] = 1
      end
    end
    genres_hash
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
